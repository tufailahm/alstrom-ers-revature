package com.training.pms.dao;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class ERSTest {
String browserName ="chrome";
	
	WebDriver driver;
	
	@BeforeEach
	public  void setup() {
		if(browserName.equals("edge"))
		{
			WebDriverManager.edgedriver().setup();;
			driver = new EdgeDriver();
		}	
		else if(browserName.equals("chrome"))
		{
			WebDriverManager.chromedriver().setup();;
			driver = new ChromeDriver();
		}
	}
	
	@Test
	@DisplayName("Testing login functionality of ERS")
	public void testERSLoginFunctionality(){
		driver.get("http://localhost:8080/alstrom-ers-revature/login.html");
		driver.manage().window().maximize();
		// XPATH locators
		driver.findElement(By.xpath("//*[@id=\"username\"]")).sendKeys("Tufail");
		driver.findElement(By.xpath("//*[@id=\"password\"]")).sendKeys("12345678");

		driver.findElement(By.id("btnSubmit")).click();
		
		//assert 
		
	}
	
}
