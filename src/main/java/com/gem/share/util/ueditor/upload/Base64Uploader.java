package com.gem.share.util.ueditor.upload;

import org.apache.commons.codec.binary.Base64;

import java.util.Map;

public final class Base64Uploader {

	public static com.gem.share.util.ueditor.define.State save(String content, Map<String, Object> conf) {
		
		byte[] data = decode(content);

		long maxSize = ((Long) conf.get("maxSize")).longValue();

		if (!validSize(data, maxSize)) {
			return new com.gem.share.util.ueditor.define.BaseState(false, com.gem.share.util.ueditor.define.AppInfo.MAX_SIZE);
		}

		String suffix = com.gem.share.util.ueditor.define.FileType.getSuffix("JPG");

		String savePath = com.gem.share.util.ueditor.PathFormat.parse((String) conf.get("savePath"),
				(String) conf.get("filename"));
		
		savePath = savePath + suffix;
		String physicalPath = (String) conf.get("rootPath") + savePath;

		com.gem.share.util.ueditor.define.State storageState = com.gem.share.util.ueditor.upload.StorageManager.saveBinaryFile(data, physicalPath);

		if (storageState.isSuccess()) {
			storageState.putInfo("url", com.gem.share.util.ueditor.PathFormat.format(savePath));
			storageState.putInfo("type", suffix);
			storageState.putInfo("original", "");
		}

		return storageState;
	}

	private static byte[] decode(String content) {
		return Base64.decodeBase64(content);
	}

	private static boolean validSize(byte[] data, long length) {
		return data.length <= length;
	}
	
}