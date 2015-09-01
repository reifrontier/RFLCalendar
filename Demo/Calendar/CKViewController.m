#import <CoreGraphics/CoreGraphics.h>
#import "CKViewController.h"
#import "RFLCalendarView.h"

//========================================
//   Color
//========================================
#define COLORHEX(r, g, b, a)                    [UIColor colorWithRed:(float)r/0xFF green:(float)g/0xFF blue:(float)b/0xFF alpha:a]
#define COLORDEC(r, g, b, a)                    [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define UIColorFromRGB(rgbValue, a) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

#define kRFLColor_App                           COLORHEX(0x2A, 0x7F, 0xFF, 1.0)

#define kRFLColor_App_Faded                     COLORHEX(0x2A, 0x7F, 0xFF, 0.5)

#define kRFLColor_App_White                     COLORHEX(0xFF, 0xFF, 0xFF, 1.0)

#define kRFLColor_App_White_Faded               COLORHEX(0xFF, 0xFF, 0xFF, 0.5)

#define kRFLColor_Error                         COLORHEX(0xFE, 0x08, 0x35, 1.0)

#define kRFLColor_Green                         COLORHEX(0x3F, 0xDE, 0x74, 1.0)

#define kRFLColor_MenuTint                      COLORHEX(0x00, 0x00, 0x1E, 1.0)

#define kRFLColor_HomeTint                      kRFLColor_MenuTint
#define kRFLColor_HomeLine                      COLORHEX(0x55, 0x55, 0x55, 1.0)

#define kRFLColor_Common_DateLabel              COLORHEX(0xF9, 0xF9, 0xF9, 1.0)

#define kRFLColor_AnimateImageView              kRFLColor_HomeTint
#define kRFLColor_HomeView                      [UIColor whiteColor]
#define kRFLColor_DailyCollectionView           [UIColor clearColor]
#define kRFLColor_StoryLineCollectionView       [UIColor clearColor]

#define kRFLColor_IndicatorTint                 COLORHEX(0xFF, 0xFF, 0xFF, 1.0)
#define kRFLColor_IndicatorLoadingTint          COLORHEX(0xCC, 0xCC, 0xCC, 1.0)
#define kRFLColor_IndicatorStroke               kRFLColor_MenuTint
#define kRFLColor_StoryLineCellTint             kRFLColor_HomeTint
//#define kRFLColor_StoryLineCellLine             kRFLColor_HomeLine

#define kRFLColor_ActivityTypeUnknown               kRFLColor_HomeLine
#define kRFLColor_ActivityTypeStay                  COLORHEX(0xFF, 0xFF, 0xFF, 1.0)
#define kRFLColor_ActivityTypeWalkWithAlpha(a)      COLORHEX(0xFF, 0xB1, 0x00, a)
#define kRFLColor_ActivityTypeTransportWithAlpha(a) COLORHEX(0x2A, 0x7F, 0xFF, a)
#define kRFLColor_ActivityTypeWalk                  kRFLColor_ActivityTypeWalkWithAlpha(1.0)
#define kRFLColor_ActivityTypeTransport             kRFLColor_ActivityTypeTransportWithAlpha(1.0)

#define kRFLColor_ActivityTypeSendTimeUnknown       kRFLColor_HomeLine
#define kRFLColor_ActivityTypeSendTimeStay          COLORHEX(230.0,230.0,230.0, 1.0)
#define kRFLColor_ActivityTypeSendTimeWalk          COLORHEX(237.0,139.0,0.0, 1.0)
#define kRFLColor_ActivityTypeSendTimeTransport     COLORHEX(0.0,94.0,235.0, 1.0)

#define kRFLColor_HomeBackground_Color          COLORHEX(0x00, 0x66, 0xFF, 0.1)
#define kRFLColor_HomeGrad_StartColor           COLORHEX(0x00, 0xFF, 0xFF, 1.0)
#define kRFLColor_HomeGrad_EndColor             COLORHEX(0x00, 0x55, 0x55, 1.0)

//#define kRFLColor_Setting_BackColor             COLORHEX(0x3B,0x3B,0x3B,1.0)
#define kRFLColor_Setting_BackColor             COLORHEX(0xFF,0xFF,0xFF,1.0)
#define kRFLColor_Setting_CellSelectedColor     COLORHEX(0xCC,0xCC,0xCC,1.0)
#define kRFLColor_Setting_Header_Back           COLORHEX(0xF2,0xF2,0xF2,1.0)
#define kRFLColor_Setting_Header_Logo           COLORHEX(0x80, 0x80, 0x80, 1.0)
#define kRFLColor_Setting_Header1               COLORHEX(0x80, 0x80, 0x80, 1.0)
#define kRFLColor_Setting_Icon                  COLORHEX(0x60, 0x60, 0x60, 1.0)
#define kRFLColor_Setting_Text1                 COLORHEX(0x33, 0x33, 0x33, 1.0)
#define kRFLColor_Setting_Text2                 COLORHEX(0x60, 0x60, 0x60, 1.0)
#define kRFLColor_Setting_Switch                kRFLColor_App

#define kRFLColor_Setting_TextColor             COLORHEX(0x1A,0x1A,0x1A,1.0)

#define kRFLColor_Calendar_BackColor            COLORHEX(0xFF,0xFF,0xFF,0.0)
#define kRFLColor_Calendar_TextColor            COLORHEX(0x1A,0x1A,0x1A,1.0)
#define kRFLColor_Calendar_SelectDateTextColor  COLORHEX(0x00,0x66,0xFF,1.0)
#define kRFLColor_Calendar_DisableDateTextColor COLORHEX(0xE6,0xE6,0xE6,1.0)

#define kRFLColor_Agreement_TextColor           COLORHEX(0xFF,0xFF,0xFF,1.0)
#define kRFLColor_Agreement_LinkColor           COLORHEX(0x00, 0x33, 0x80, 1.0)

#define kRFLColor_ActivityPhotoThumbnailViewBackground    COLORHEX(0x1A, 0x1A, 0x1A, 1.0)


//========================================
//   Font
//========================================
// FontName
#define kRFLFont_FontNameHiraginoKakuGothicW3   @"HiraKakuProN-W3"
#define kRFLFont_FontNameHiraginoKakuGothicW6   @"HiraKakuProN-W6"
#define kRFLFont_FontNameRobotoThin             @"Roboto-Thin"
#define kRFLFont_FontNameRobotoLight            @"Roboto-Light"
#define kRFLFont_FontNameRobotoRegular          @"Roboto-Regular"

#define kRFLFont_FontNameDefault                kRFLFont_FontNameRobotoThin
#define kRFLFont_FontNameDefaultLight           kRFLFont_FontNameRobotoLight
#define kRFLFont_FontNameDefaultBold            kRFLFont_FontNameRobotoThin

#define kRFLFont_Indicator_Common_Title         kRFLFont_FontNameRobotoThin
#define kRFLFont_Indicator_Common_Value         kRFLFont_FontNameRobotoThin
#define kRFLFont_Indicator_Common_Unit          kRFLFont_FontNameRobotoLight

#define kRFLFont_Indicator_Value                kRFLFont_FontNameRobotoThin
#define kRFLFont_Indicator_Unit                 kRFLFont_FontNameRobotoLight
#define kRFLFont_StoryLine_Title                kRFLFont_FontNameRobotoLight
#define kRFLFont_StoryLine_Time                 kRFLFont_FontNameRobotoLight
#define kRFLFont_StoryLine_Discreet             kRFLFont_FontNameRobotoThin

#define kRFLFont_LocationServiceEnableStep      kRFLFont_FontNameRobotoLight
#define kRFLFont_Menu [RFLUtil isJaLocale] ? kRFLFont_FontNameHiraginoKakuGothicW3 : kRFLFont_FontNameRobotoLight

#define kRFLFont_Tutorial [RFLUtil isJaLocale] ? kRFLFont_FontNameHiraginoKakuGothicW3 : kRFLFont_FontNameRobotoLight


// FontSize
#define kRFLFontSize_Indicator_Value                (is6Plus ? 48 : is6 ? 44 : 40)
#define kRFLFontSize_Indicator_Unit                 20.0
#define kRFLFontSize_SubIndicator_Value             35.0
#define kRFLFontSize_SubIndicator_Unit              kRFLFontSize_Indicator_Unit
#define kRFLFontSize_StoryLine_Title                18.0
#define kRFLFontSize_StoryLine_Time                 17.0
#define kRFLFontSize_StoryLine_Discreet             14.0
#define kRFLFontSize_StoryLine_Photo_Description    15.0
#define kRFLFontSize_Menu_Title                     20.0
#define kRFLFontSize_Menu_Title_JA                  20.0
#define kRFLFontSize_ColorSetting_Name              20.0
#define kRFLFontSize_AppSetting_Name                20.0
#define kRFLFontSize_AppSetting_Name_JA             20.0
#define kRFLFontSize_AppSetting_Detail              12.0
#define kRFLFontSize_AppSetting_Detail_JA           12.0
#define kRFLFontSize_Setting_WebViewTitle           16.0

#define kRFLFontSize_Calendar_Date                  25.0
#define kRFLFontSize_Calendar_Date_JA               23.0
#define kRFLFontSize_Calendar_Year                  18.0

#define kRFLFontSize_Calendar_Title                 25.0
#define kRFLFontSize_Calendar_Day                   20.0
#define kRFLFontSize_Calendar_DayOfWeek             14.0

#define kRFLFontSize_Agreement_Welcome              40.0
#define kRFLFontSize_Agreement_Title                27.0
#define kRFLFontSize_Agreement_Desctiption          16.0

#define kRFLFontSize_LocationServiceEnableGotit     28.0

#define kRFLFontSize_Storyline_Description          14.0
#define kRFLFontSize_Storyline_Blank_Image          12.0

#define kRFLFontSize_Indicator_Sub                  14.0
// FontColor
#define kRFLFontColor_Indicator_Value           [UIColor blackColor]
#define kRFLFontColor_StoryLine_Default         [UIColor whiteColor]
#define kRFLFontColor_StoryLine_Discreet        [UIColor lightGrayColor]

//========================================
//   Dimension
//========================================
#define kRFLDimension_DefaultCornerRadius           5.0

#define kRFLDimension_Home_SizeChangeDuration       0.25
#define kRFLDimension_Home_DailyHeight              250
#define kRFLDimension_Home_DateLabelHeight          20.0
#define kRFLDimension_Home_DateLabelMarginY         4.0
#define kRFLDimension_Home_DateLabelMarginX         4.0
#define kRFLDimension_Home_DailyTransitionFactor    0.05

//#define kRFLDimension_Daily_SummaryCellHeight       540
#define kRFLDimension_Daily_IndicatorSize           (is6Plus ? 175 : is6 ? 160 : 145)
#define kRFLDimension_Daily_IndicatorStrokeWidth    (is6Plus ? 24 : is6 ? 22 : 20)
#define kRFLDimension_Daily_SubIndicatorSize        (is6Plus ? 124 : is6 ? 117 : 110)
#define kRFLDimension_Daily_SubIndicatorMargin      (is6Plus ? 25 : is6 ? 22 : 20)
//#define kRFLDimension_Daily_IndicatorMinScale       0.5
#define kRFLDimension_Daily_SpacerCellHeight        1.0

#define kRFLStoryLineOvalSizeLarge                  180.0f
#define kRFLStoryLineOvalSizeSmall                  120.0f

#define kRFLStoryLineLineWidth                      5.0f

#define kRFLStoryLineLineOut                        25.0f
#define kRFLStoryLineOvalPositionPercent            0.5

#define kRFLAnimateImageView_TransitionDuration       10.0
#define kRFLAnimateImageView_FadeinDuration           2.0
#define kRFLAnimateImageView_Delay                    2.0
#define kRFLAnimateImageView_ImageFrameScale          2.0 // トランジションが出来るようにViewよりも大きく画像を表示する割合(Portrait)
#define kRFLAnimateImageView_ImageFrameLandscapeScale 2.5 // トランジションが出来るようにViewよりも大きく画像を表示する割合(Landscape)
#define kRFLAnimateImageView_NumberOfImageViews       4   // キューに入れるImageViewの個数

#define kRFLDimension_AppSettingHeaderHeight        80.f
#define kRFLDimension_AppSettingCellHeight          60.f

#define kRFLHome_Menu_OpenThresholdFactor           0.1
#define kRFLHome_Menu_ShowHomeViewFactor            0.1

#define kRFLHome_Menu_OpenedViewBottomHeight        53.f

#define kRFLDimension_StoryLine_StaticMap_RegionDistance    350.0

#define kRFLDimension_AlertViewWidth                170.f
#define kRFLDimension_AlertViewHeight               100.f
#define kRFLDimension_AlertViewMargin               10.f
#define kRFLDimension_AlertViewButtonHeight         40.f
#define kRFLColor_AlertView                         [UIColor whiteColor]
#define kRFLFontSize_AlertViewDescription           13.0
#define kRFLFontSize_AlertViewButtonTitle           18.f

#define kRFLDimension_LocationServiceEnableStepWidth        260.f
#define kRFLDimension_LocationServiceEnableStepHeight       385.f
#define kRFLDimension_LocationServiceEnableStepGotitHeight  60.f

#define kRFLActivityPhotoThumbnailFooterHeight      44.f


#define kRFLStoryLineNoRecordWidth                  90.0f
#define kRFLStoryLineNoRecordHeight                 30.0f

#define kRFLStoryLineCellMargin                     10.0f

#define kRFLFontSize_Agreement_Description          16.0f

//========================================
//   DateTime Format
//========================================
#define kRFLDateTimeFormat_API_Param_Date           @"yyyyMMdd"
#define kRFLDateTimeFormat_API_Model_DateTime       @"yyyyMMdd'T'HHmmss'Z'"
#define kRFLDateTimeFormat_API_Model_LocalDateTime  @"yyyyMMdd'T'HHmmssZ"
#define kRFLDateTimeFormat_Display_Calendar_Date    @"MMM d"
#define kRFLDateTimeFormat_Display_Calendar_Year    @"yyyy"
#define kRFLDateTimeFormat_Display_Date             @"yyyyMMMdd"
#define kRFLDateTimeFormat_Display_Time             @"H:mm"
#define kRFLDateTimeFormat_Display_DateWeekdayTime  @"MMMdEEEHHmm"

#define kRFLDateTimeFormat_DB_LocalDateTime         @"yyyyMMdd'T'HHmmss"

#define kRFLDateTimeFormat_Display_Date_Time        @"yyyy/MM/dd"


@interface CKViewController () <RFLCalendarDelegate>

@property(nonatomic, strong) UILabel *dateLabel;
@property(nonatomic, strong) NSDateFormatter *dateFormatter;
@property(nonatomic, strong) NSDate *minimumDate;
@property(nonatomic, strong) NSArray *disabledDates;

@end

@implementation CKViewController

- (id)init {
    self = [super init];
    if (self) {
        RFLCalendarView *calendar = [[RFLCalendarView alloc] initWithStartDay:startSunday
                                                                        frame:CGRectMake(0, CGRectGetHeight([UIApplication sharedApplication].statusBarFrame), CGRectGetWidth(self.view.bounds), 320)];
        
        self.dateFormatter = [[NSDateFormatter alloc] init];
        [self.dateFormatter setDateFormat:@"dd/MM/yyyy"];
        self.minimumDate = [self.dateFormatter dateFromString:@"10/10/2014"];

        calendar.adaptHeightToNumberOfWeeksInMonth = YES;
        
        calendar.minimumDate = self.minimumDate;
        
        calendar.maximumDate = [NSDate date];

        calendar.delegate = self;
        
        calendar.backgroundColor = kRFLColor_Calendar_BackColor;
        [calendar setTitleFont:[UIFont fontWithName:kRFLFont_FontNameRobotoLight size:kRFLFontSize_Calendar_Title]];
        [calendar setTitleColor:kRFLColor_Calendar_TextColor];
        
        [calendar setButtonColor:kRFLColor_Calendar_BackColor];
        
        [calendar setDayOfWeekFont:[UIFont fontWithName:kRFLFont_FontNameRobotoLight size:kRFLFontSize_Calendar_DayOfWeek]];
        [calendar setDayOfWeekTextColor:kRFLColor_Calendar_TextColor];
        [calendar setDayOfWeekBottomColor:kRFLColor_Calendar_BackColor topColor:kRFLColor_Calendar_BackColor];
        
        [calendar setDateFont:[UIFont fontWithName:kRFLFont_FontNameRobotoLight size:kRFLFontSize_Calendar_Day]];
        [calendar setDateBackgroundColor:[UIColor clearColor]];
        
        [calendar setDateBorderColor:kRFLColor_Calendar_BackColor];
        [calendar setInnerBorderColor:kRFLColor_Calendar_BackColor];
        
        calendar.dateTextColor = [UIColor whiteColor];
        calendar.selectedDateTextColor = kRFLColor_Calendar_SelectDateTextColor;
        calendar.selectedDateBackgroundColor = kRFLColor_Calendar_BackColor;
        calendar.currentDateTextColor = [UIColor whiteColor];
        calendar.currentDateBackgroundColor = kRFLColor_Calendar_BackColor;
        calendar.nonCurrentMonthDateTextColor = kRFLColor_Calendar_DisableDateTextColor;
        calendar.disabledDateTextColor = kRFLColor_Calendar_DisableDateTextColor;
        calendar.disabledDateBackgroundColor = kRFLColor_Calendar_BackColor;
        [calendar setSubmitTextColor:kRFLColor_App];
        [calendar setNotSubmitTextColor:kRFLColor_Green];
        
        calendar.delegate = self;
        
        NSArray *attay = @[@{@"dailyDate":@"20150901",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]}
                           ];
        
        [calendar setDailyaaaDates:attay];
        
        [self.view addSubview:calendar];
        
        self.view.backgroundColor = [UIColor whiteColor];

        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(localeDidChange) name:NSCurrentLocaleDidChangeNotification object:nil];
    }
    return self;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%s ",__PRETTY_FUNCTION__);

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    
    
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)localeDidChange {
    //[self.calendarView setLocale:[NSLocale currentLocale]];
}

- (BOOL)dateIsDisabled:(NSDate *)date {
    for (NSDate *disabledDate in self.disabledDates) {
        if ([disabledDate isEqualToDate:date]) {
            return YES;
        }
    }
    return NO;
}

#pragma mark -
#pragma mark - RFLCalendarDelegate


- (BOOL)calendar:(RFLCalendarView *)calendar willSelectDate:(NSDate *)date {
    return ![self dateIsDisabled:date];
}

- (void)calendar:(RFLCalendarView *)calendar didSelectDate:(NSDate *)date {
    self.dateLabel.text = [self.dateFormatter stringFromDate:date];
    
    
}

- (void)calendar:(RFLCalendarView *)calendar didChangeMonth:(NSDate *)date
{
    NSDate* localDateTime = [NSDate dateWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date];
    
    BOOL current = [calendar dateIsInCurrentMonth:[NSDate date]];
    if (current) {
        [calendar setNextButtonHidden:YES];
    } else {
        [calendar setNextButtonHidden:NO];
    }
    
    BOOL minimum = [calendar dateIsInCurrentMonth:self.minimumDate];
    if (minimum) {
        [calendar setPrevButtonHidden:YES];
    } else {
        [calendar setPrevButtonHidden:NO];
    }
    
    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [cal components:[self calendarUnitsForComponents]
                                          fromDate:localDateTime];
    
    NSLog(@"%s :%ld :%ld :%ld",__PRETTY_FUNCTION__,components.year,components.month,components.day);
    
    if (components.month == 8) {
        NSArray *attay = @[
                           @{@"dailyDate":@"20150831",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150830",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150829",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150828",
                             @"submit":[NSNumber numberWithBool:NO],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150827",
                             @"submit":[NSNumber numberWithBool:NO],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150826",
                             @"submit":[NSNumber numberWithBool:NO],
                             @"exist":[NSNumber numberWithBool:NO]},
                           @{@"dailyDate":@"20150825",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150824",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150823",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150822",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150821",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]}
                           ];
        [calendar setDailyaaaDates:attay];
    } else if (components.month == 7 ) {
        NSArray *attay = @[
                           @{@"dailyDate":@"20150731",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150730",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150729",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150728",
                             @"submit":[NSNumber numberWithBool:NO],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150727",
                             @"submit":[NSNumber numberWithBool:NO],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150706",
                             @"submit":[NSNumber numberWithBool:NO],
                             @"exist":[NSNumber numberWithBool:NO]},
                           @{@"dailyDate":@"20150725",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150724",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150723",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150722",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]},
                           @{@"dailyDate":@"20150711",
                             @"submit":[NSNumber numberWithBool:YES],
                             @"exist":[NSNumber numberWithBool:YES]}
                           ];
        [calendar setDailyaaaDates:attay];
    }
    
    
}

- (void)calendar:(RFLCalendarView *)calendar willShowMonth:(NSDate *)date
{
    NSLog(@"%s::",__PRETTY_FUNCTION__);
}

- (void)calendar:(RFLCalendarView *)calendar didLayoutInRect:(CGRect)frame {
    NSLog(@"calendar layout: %@", NSStringFromCGRect(frame));
}
- (NSCalendarUnit)calendarUnitsForComponents
{
    // 全部入り
    NSCalendarUnit units =
    NSCalendarUnitEra |
    NSCalendarUnitYear |
    NSCalendarUnitMonth |
    NSCalendarUnitDay |
    NSCalendarUnitHour |
    NSCalendarUnitMinute |
    NSCalendarUnitSecond |
    NSCalendarUnitWeekday |
    NSCalendarUnitWeekdayOrdinal |
    NSCalendarUnitQuarter |
    NSCalendarUnitWeekOfMonth |
    NSCalendarUnitWeekOfYear |
    NSCalendarUnitQuarter |
    NSCalendarUnitYearForWeekOfYear |
    NSCalendarUnitCalendar |
    NSCalendarUnitTimeZone;
    return units;
}

@end