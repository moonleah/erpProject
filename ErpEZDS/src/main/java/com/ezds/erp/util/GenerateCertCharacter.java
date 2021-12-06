package com.ezds.erp.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.springframework.stereotype.Component;
@Component
public class GenerateCertCharacter {
	 private int certCharLength = 10;
	 private final char[] characterTable = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
	                                            'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 
	                                            'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
	    
	    public String excuteGenerate() {
	        Random random = new Random(System.currentTimeMillis());
	        int tablelength = characterTable.length;
	        StringBuffer buf = new StringBuffer();
	        
	        for(int i = 0; i < certCharLength; i++) {
	            buf.append(characterTable[random.nextInt(tablelength)]);
	        }
	        
	        return buf.toString();
	    }

	    public String excuteGenerate2() {
	        Random random = new Random(System.currentTimeMillis());
	        int tablelength = characterTable.length;
	        StringBuffer buf = new StringBuffer();
	        Date now = new Date();
	        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	        for(int i = 0; i < 4; i++) {
	            buf.append(characterTable[random.nextInt(tablelength)]);
	        }
	        return buf.toString() + format.format(now);
	    }
	    
	    
	    public int getCertCharLength() {
	        return certCharLength;
	    }

	    public void setCertCharLength(int certCharLength) {
	        this.certCharLength = certCharLength;
	    }

}
