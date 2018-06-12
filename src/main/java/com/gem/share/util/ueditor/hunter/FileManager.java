package com.gem.share.util.ueditor.hunter;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

public class FileManager {

	private String dir = null;
	private String rootPath = null;
	private String[] allowFiles = null;
	private int count = 0;
	
	public FileManager ( Map<String, Object> conf ) {

		this.rootPath = (String)conf.get( "rootPath" );
		this.dir = this.rootPath + (String)conf.get( "dir" );
		this.allowFiles = this.getAllowFiles( conf.get("allowFiles") );
		this.count = (Integer)conf.get( "count" );
		
	}
	
	public com.gem.share.util.ueditor.define.State listFile (int index ) {
		
		File dir = new File( this.dir );
		com.gem.share.util.ueditor.define.State state = null;

		if ( !dir.exists() ) {
			return new com.gem.share.util.ueditor.define.BaseState( false, com.gem.share.util.ueditor.define.AppInfo.NOT_EXIST );
		}
		
		if ( !dir.isDirectory() ) {
			return new com.gem.share.util.ueditor.define.BaseState( false, com.gem.share.util.ueditor.define.AppInfo.NOT_DIRECTORY );
		}
		
		Collection<File> list = FileUtils.listFiles( dir, this.allowFiles, true );
		
		if ( index < 0 || index > list.size() ) {
			state = new com.gem.share.util.ueditor.define.MultiState( true );
		} else {
			Object[] fileList = Arrays.copyOfRange( list.toArray(), index, index + this.count );
			state = this.getState( fileList );
		}
		
		state.putInfo( "start", index );
		state.putInfo( "total", list.size() );
		
		return state;
		
	}
	
	private com.gem.share.util.ueditor.define.State getState (Object[] files ) {
		
		com.gem.share.util.ueditor.define.MultiState state = new com.gem.share.util.ueditor.define.MultiState( true );
		com.gem.share.util.ueditor.define.BaseState fileState = null;
		
		File file = null;
		
		for ( Object obj : files ) {
			if ( obj == null ) {
				break;
			}
			file = (File)obj;
			fileState = new com.gem.share.util.ueditor.define.BaseState( true );
			fileState.putInfo( "url", com.gem.share.util.ueditor.PathFormat.format( this.getPath( file ) ) );
			state.addState( fileState );
		}
		
		return state;
		
	}
	
	private String getPath ( File file ) {
		
		String path = file.getAbsolutePath();
		
		return path.replace( this.rootPath, "/" );
		
	}
	
	private String[] getAllowFiles ( Object fileExt ) {
		
		String[] exts = null;
		String ext = null;
		
		if ( fileExt == null ) {
			return new String[ 0 ];
		}
		
		exts = (String[])fileExt;
		
		for ( int i = 0, len = exts.length; i < len; i++ ) {
			
			ext = exts[ i ];
			exts[ i ] = ext.replace( ".", "" );
			
		}
		
		return exts;
		
	}
	
}
