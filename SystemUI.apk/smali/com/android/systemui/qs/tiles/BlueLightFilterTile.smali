.class public Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "BlueLightFilterTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;,
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLF_FILTER_OFF:I = 0x0

.field private static final BLF_FILTER_ON:I = 0x1

.field private static final BLF_INTENT_EXTRA_SET_OFF:I = 0x16

.field private static final BLF_INTENT_EXTRA_SET_ON:I = 0x15

.field private static final BLF_INTENT_EXTRA_SET_START_DETAIL:I = 0x1f

.field private static final BLF_INTENT_EXTRA_USER_CHANGED:I = 0x29

.field private static final BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

.field private static final COMPONENT_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.bluelightfilter"

.field private static final COMPONENT_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.bluelightfilter.BlueLightFilterService"

.field private static final COMPONENT_SERVICE_TYPE_NAME:Ljava/lang/String; = "BLUE_LIGHT_FILTER_SERVICE_TYPE"

.field private static final DB_BLUE_LIGHT_FILTER:Ljava/lang/String; = "blue_light_filter"

.field private static final DB_BLUE_LIGHT_FILTER_OP:Ljava/lang/String; = "blue_light_filter_opacity"

.field private static final DB_COLOR_ADJUSTMENT:Ljava/lang/String; = "color_blind"

.field private static final DB_COLOR_LENS:Ljava/lang/String; = "color_lens_switch"

.field private static final DB_GRAYSCALE:Ljava/lang/String; = "greyscale_mode"

.field private static final DB_NEGATIVE_COLORS:Ljava/lang/String; = "high_contrast"

.field private static final DB_SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final DB_SCREEN_MODE_SETTING_ADAPTIVE_DISPLAY:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final DB_SCREEN_MODE_SETTING_SW:Ljava/lang/String; = "sw_screen_mode_setting"

.field private static final READING_MODE_OFF:I = 0x4

.field private static final READING_MODE_ON:I = 0x5

.field private static final READING_MODE_SETTINGS:Ljava/lang/String; = "com.samsung.settings.ModePreviewTablet"

.field private static final READING_MODE_SUPPORT_HW:I = 0x0

.field private static final READING_MODE_SUPPORT_NONE:I = 0x2

.field private static final READING_MODE_SUPPORT_SW:I = 0x1


# instance fields
.field COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailListening:Z

.field private final mFeatureEnabled:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureObserver:Landroid/database/ContentObserver;

.field private final mFeatures:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private final mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

.field private final mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mToasMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$BlueLightFilterSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$5;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v3, "blue_light_filter"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$5;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v3, "blue_light_filter_opacity"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$7;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v4, "screen_mode_setting"

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$7;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

    :goto_0
    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v5, "sw_screen_mode_setting"

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    :goto_1
    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private addFeature()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const-string v0, "greyscale_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "color_lens_switch"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isFeatureEnabled()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    const v3, 0x7f12019a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v5}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    const v5, 0x7f120a14

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    return v5

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    return v2
.end method

.method private sendIntent(I)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIntent( key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ) BLUE_LIGHT_SETTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private setMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    if-eqz p1, :cond_0

    const/16 v0, 0x15

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showItPolicyToast()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x138d

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120a15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->getMetricsCategory()I

    move-result v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {v2, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showDetail(Z)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->isFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :goto_2
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120a15

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const v1, 0x7f0804f1

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->refreshState()V

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    return v1
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    sget-boolean v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailListening( listening:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    :goto_0
    return-void
.end method
