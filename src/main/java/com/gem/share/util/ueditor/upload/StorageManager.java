package com.gem.share.util.ueditor.upload;

import org.apache.commons.io.FileUtils;

import java.io.*;

public class StorageManager {
	public static final int BUFFER_SIZE = 8192;

	public StorageManager() {
	}

	public static com.gem.share.util.ueditor.define.State saveBinaryFile(byte[] data, String path) {
		File file = new File(path);

		com.gem.share.util.ueditor.define.State state = valid(file);

		if (!state.isSuccess()) {
			return state;
		}

		try {
			BufferedOutputStream bos = new BufferedOutputStream(
					new FileOutputStream(file));
			bos.write(data);
			bos.flush();
			bos.close();
		} catch (IOException ioe) {
			return new com.gem.share.util.ueditor.define.BaseState(false, com.gem.share.util.ueditor.define.AppInfo.IO_ERROR);
		}

		state = new com.gem.share.util.ueditor.define.BaseState(true, file.getAbsolutePath());
		state.putInfo( "size", data.length );
		state.putInfo( "title", file.getName() );
		return state;
	}

	public static com.gem.share.util.ueditor.define.State saveFileByInputStream(InputStream is, String path,
																				   long maxSize) {
		com.gem.share.util.ueditor.define.State state = null;

		File tmpFile = getTmpFile();

		byte[] dataBuf = new byte[ 2048 ];
		BufferedInputStream bis = new BufferedInputStream(is, StorageManager.BUFFER_SIZE);

		try {
			BufferedOutputStream bos = new BufferedOutputStream(
					new FileOutputStream(tmpFile), StorageManager.BUFFER_SIZE);

			int count = 0;
			while ((count = bis.read(dataBuf)) != -1) {
				bos.write(dataBuf, 0, count);
			}
			bos.flush();
			bos.close();

			if (tmpFile.length() > maxSize) {
				tmpFile.delete();
				return new com.gem.share.util.ueditor.define.BaseState(false, com.gem.share.util.ueditor.define.AppInfo.MAX_SIZE);
			}

			state = saveTmpFile(tmpFile, path);

			if (!state.isSuccess()) {
				tmpFile.delete();
			}

			return state;
			
		} catch (IOException e) {
		}
		return new com.gem.share.util.ueditor.define.BaseState(false, com.gem.share.util.ueditor.define.AppInfo.IO_ERROR);
	}

	public static com.gem.share.util.ueditor.define.State saveFileByInputStream(InputStream is, String path) {
		com.gem.share.util.ueditor.define.State state = null;

		File tmpFile = getTmpFile();

		byte[] dataBuf = new byte[ 2048 ];
		BufferedInputStream bis = new BufferedInputStream(is, StorageManager.BUFFER_SIZE);

		try {
			BufferedOutputStream bos = new BufferedOutputStream(
					new FileOutputStream(tmpFile), StorageManager.BUFFER_SIZE);

			int count = 0;
			while ((count = bis.read(dataBuf)) != -1) {
				bos.write(dataBuf, 0, count);
			}
			bos.flush();
			bos.close();

			state = saveTmpFile(tmpFile, path);

			if (!state.isSuccess()) {
				tmpFile.delete();
			}

			return state;
		} catch (IOException e) {
		}
		return new com.gem.share.util.ueditor.define.BaseState(false, com.gem.share.util.ueditor.define.AppInfo.IO_ERROR);
	}

	private static File getTmpFile() {
		File tmpDir = FileUtils.getTempDirectory();
		String tmpFileName = (Math.random() * 10000 + "").replace(".", "");
		return new File(tmpDir, tmpFileName);
	}

	private static com.gem.share.util.ueditor.define.State saveTmpFile(File tmpFile, String path) {
		com.gem.share.util.ueditor.define.State state = null;
		File targetFile = new File(path);

		if (targetFile.canWrite()) {
			return new com.gem.share.util.ueditor.define.BaseState(false, com.gem.share.util.ueditor.define.AppInfo.PERMISSION_DENIED);
		}
		try {
			FileUtils.moveFile(tmpFile, targetFile);
		} catch (IOException e) {
			return new com.gem.share.util.ueditor.define.BaseState(false, com.gem.share.util.ueditor.define.AppInfo.IO_ERROR);
		}

		state = new com.gem.share.util.ueditor.define.BaseState(true);
		state.putInfo( "size", targetFile.length() );
		state.putInfo( "title", targetFile.getName() );
		
		return state;
	}

	private static com.gem.share.util.ueditor.define.State valid(File file) {
		File parentPath = file.getParentFile();

		if ((!parentPath.exists()) && (!parentPath.mkdirs())) {
			return new com.gem.share.util.ueditor.define.BaseState(false, com.gem.share.util.ueditor.define.AppInfo.FAILED_CREATE_FILE);
		}

		if (!parentPath.canWrite()) {
			return new com.gem.share.util.ueditor.define.BaseState(false, com.gem.share.util.ueditor.define.AppInfo.PERMISSION_DENIED);
		}

		return new com.gem.share.util.ueditor.define.BaseState(true);
	}
}
