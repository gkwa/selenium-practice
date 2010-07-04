package mypkg;

import com.thoughtworks.selenium.*;
import org.testng.annotations.*;
import static org.testng.Assert.*;

public class GoogleTest {
	public Selenium selenium;

	public void setup() {
		selenium = new DefaultSelenium("localhost", 4444, "*firefox",
				"http://yahoo.com");
		selenium.start();
	}

	public void search() {
		selenium.open("http://www.Google.com/");
		assertEquals("Google", selenium.getTitle());
		selenium.type("q", "Selenium OpenQA");
		assertEquals("Selenium OpenQA", selenium.getValue("q"));
		selenium.click("btnG");
		selenium.waitForPageToLoad("50000");
	}

	public void StopTest() {
		selenium.stop();
	}

	public static void main(String arg[]) {
		GoogleTest g = new GoogleTest();
		g.setup();
		g.search();
		g.StopTest();
	}
}
