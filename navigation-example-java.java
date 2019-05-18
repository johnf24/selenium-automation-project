
import org.testng.annotations.Test;

public class Navigation {

	@Test
	public void testNavigation() {

	    // navigates to programs
		clickByLinkText("Programs");

		// creates a program
		clickByPartialLinkText("Create a Program");

		// populates fields
		typeTextByID("programName", "Lorem Ipsum");
		typeTextByID("description", "Lorem Ipsum");

		typeTextByID("start-date", "01/01/2019");
		typeTextByID("end-date", "12/31/2019");

		// updates program
		clickByID("saveBtn");

		// exports program
		clickByID("exportBtn");
		clickByPartialLinkText("Program");

	}
}
