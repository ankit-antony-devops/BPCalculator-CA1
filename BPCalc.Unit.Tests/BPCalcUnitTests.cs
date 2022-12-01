using BPCalculator;

namespace BPCalc.Unit.Tests
{
    public class BPCalcUnitTests
    {
        [Fact]
        public void TestIfBPIsLow()
        {
            BloodPressure bp = new() { Diastolic = 52, Systolic = 87 };
            Assert.Equal(BPCategory.Low, bp.Category);
        }

        [Fact]
        public void TestIfBPIsIdeal()
        {
            BloodPressure bp = new() { Diastolic = 65, Systolic = 110 };
            Assert.Equal(BPCategory.Ideal, bp.Category);
        }

        [Fact]
        public void TestIfBPIsPreHigh()
        {
            BloodPressure bp = new() { Diastolic = 88, Systolic = 127 };
            Assert.Equal(BPCategory.PreHigh, bp.Category);
        }

        [Fact]
        public void TestIfBPIsHigh()
        {
            BloodPressure bp = new() { Diastolic = 94, Systolic = 146 };
            Assert.Equal(BPCategory.High, bp.Category);
        }

    }
}