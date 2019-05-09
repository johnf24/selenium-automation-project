package exampletest;

import org.testng.annotations.Test;

public class CheckPage {
	
	@Test
	public void testCheckPage() {
	
	String baseUrl = "https://url.com/";
    String expectedTitle = "Website Title";
    String actualTitle = "";
    
    // direct browser to base url
    driver.get(baseUrl);

    // get the actual title
    actualTitle = driver.getTitle();

    // compare actual title with expected title and print result
    if (actualTitle.contentEquals(expectedTitle)){
        System.out.println("Test Passed");
    } else {
        System.out.println("Test Failed");
    }


	}
}
