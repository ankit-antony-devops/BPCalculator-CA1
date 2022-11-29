using Microsoft.Playwright.MSTest;
using System.Threading.Tasks;

namespace PlaywrightTests;

[TestClass]
public class PageTest : PageTest
{
    [TestMethod]
    public async Task ShouldHaveTheCorrectTitle()
    {
        await Page.GotoAsync("https://bpcalc-csd1.azurewebsites.net");
        //var title = Page.Locator(".navbar__inner .navbar__title");
        await Expect(title).ToHaveTextAsync("BP Category Calculator - BPCalculator");
    }
}
