package com.maya.base.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;

public class StreamController extends Thread {

	InputStream is;
	OutputStream os;
	String type;

	public StreamController(InputStream is, String type) {
		this(is, type, null);
	}

	public StreamController(InputStream is, String type, OutputStream redirect) {
		this.is = is;
		this.type = type;
		this.os = redirect;
	}

	public void run() {

		InputStreamReader isr = null;
		BufferedReader br = null;
		PrintWriter pw = null;
		try {
			if (os != null)
				pw = new PrintWriter(os);

			isr = new InputStreamReader(is);
			br = new BufferedReader(isr);
			
			String line = null;
			while ((line = br.readLine()) != null) {
				if (pw != null)
					pw.println(line);
				if (line.contains("zip warning")) {
					//zip warning 太多，忽略掉
				} else {
					System.out.println(type + ">" + line);
				}
			}

			if (pw != null) {
				pw.flush();
				pw.close();
			}

			br.close();
			isr.close();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		} finally {

		}
	}

	public static void printStream(Process proc) {
		try {
			StreamController errorGobbler = new StreamController(proc.getErrorStream(), "Error");
			errorGobbler.start();
			StreamController outputGobbler = new StreamController(proc.getInputStream(), "Output");
			outputGobbler.start();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("打印输出流 报错");
		}
	}

}