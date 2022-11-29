// @ts-check
const { test, expect } = require('@playwright/test');

test('homepage has title and links to intro page', async ({ page }) => {
  await page.goto('https://bpcalc-csd1.azurewebsites.net/');

  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle(/BP Category Calculator - BPCalculator/);

  // create a locator
  const getStarted = page.getByRole('link', { name: 'Privacy' });

  // Expect an attribute "to be strictly equal" to the value.
  await expect(getStarted).toHaveAttribute('href', '/Privacy');

  // Click the get started link.
  await getStarted.click();
  
  // Expects the URL to contain intro.
  await expect(page).toHaveURL(/.*Privacy/);
});
