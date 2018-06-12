package com.gem.share.util.ueditor.upload;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class Uploader {
	private HttpServletRequest request = null;
	private Map<String, Object> conf = null;

	public Uploader(HttpServletRequest request, Map<String, Object> conf) {
		this.request = request;
		this.conf = conf;
	}

	public final com.gem.share.util.ueditor.define.State doExec() {
		String filedName = (String) this.conf.get("fieldName");
		com.gem.share.util.ueditor.define.State state = null;

		if ("true".equals(this.conf.get("isBase64"))) {
			state = com.gem.share.util.ueditor.upload.Base64Uploader.save(this.request.getParameter(filedName),
					this.conf);
		} else {
			state = com.gem.share.util.ueditor.upload.BinaryUploader.save(this.request, this.conf);
		}

		return state;
	}
}
