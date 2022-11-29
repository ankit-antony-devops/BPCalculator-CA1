// @ts-check
const { test, expect } = require('@playwright/test');

test('test', async ({ page }) => {
  await page.goto('https://bpcalc-csd1.azurewebsites.net/');
  await page.getByRole('link', { name: 'Home' }).click();
  await page.getByRole('list').getByRole('link', { name: 'Privacy' }).click();
  await page.getByText('Use this page to detail your site\'s privacy policy.').click();
  await page.getByRole('link', { name: 'BPCalculator' }).click();
  await page.getByLabel('Systolic').click();
  await page.getByLabel('Systolic').fill('150');
  await page.getByLabel('Diastolic').click();
  await page.getByLabel('Diastolic').fill('45');
  await page.getByRole('button', { name: 'Submit' }).click();
  await page.getByText('Low Blood Pressure').click();
});