.class Lcom/android/server/UiModeManagerService$Const;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Const"
.end annotation


# static fields
.field private static final ACTION_ALARM_SLEEP:Ljava/lang/String; = "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

.field private static final ACTION_ALARM_WAKEUP:Ljava/lang/String; = "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

.field private static final AUTOMATIC_SCHEDULE:I = 0x1

.field private static final DISPLAY_NIGHT_THEME:Ljava/lang/String; = "display_night_theme"

.field private static final DISPLAY_NIGHT_THEME_OFF_TIME:Ljava/lang/String; = "display_night_theme_off_time"

.field private static final DISPLAY_NIGHT_THEME_ON_TIME:Ljava/lang/String; = "display_night_theme_on_time"

.field private static final DISPLAY_NIGHT_THEME_SCHEDULED:Ljava/lang/String; = "display_night_theme_scheduled"

.field private static final DISPLAY_NIGHT_THEME_SCHEDULED_TYPE:Ljava/lang/String; = "display_night_theme_scheduled_type"

.field private static final NIGHT_MODE_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final OFF_SCHEDULE:I = 0x0

.field private static final PACKAGE_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final SET_OFF:I = 0x0

.field private static final SET_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UiModeManagerService"

.field private static final USER_SCHEDULE:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
