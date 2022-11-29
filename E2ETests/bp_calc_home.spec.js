// @ts-check
const { test, expect } = require('@playwright/test');

test('BP Calculator Homepage test cases', async ({ page }) => {
  await page.goto('https://bpcalc-csd1.azurewebsites.net/');
  await page.getByRole('link', { name: 'Home' }).click();
  await page.getByRole('list').getByRole('link', { name: 'Privacy' }).click();
  await page.getByRole('heading', { name: 'Privacy Policy' }).click();
  await page.getByText('Use this page to detail your site\'s privacy policy.').click();
  await page.getByRole('link', { name: 'Home' }).click();
  await page.getByLabel('Systolic').click();
  await page.getByLabel('Systolic').fill('142');
  await page.getByLabel('Diastolic').click();
  await page.getByLabel('Diastolic').fill('93');
  await page.getByRole('button', { name: 'Submit' }).click();
  await page.getByText('High Blood Pressure').click();
  await page.getByText('Please visit your nearest GP for a body checkup Doctor365: 0818000365').click();
});