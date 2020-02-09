.class Lcom/android/server/UiModeManagerService$NightModeTimer;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NightModeTimer"
.end annotation


# static fields
.field private static final DEFAULT_VALUE_NIGHT_THEME_OFF:I = 0x1a4

.field private static final DEFAULT_VALUE_NIGHT_THEME_ON:I = 0x474


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mNightModeEndInMilli:J

.field private mNightModeEndTime:I

.field private mNightModeStartInMilli:J

.field private mNightModeStartTime:I

.field private mSleepPendingIntent:Landroid/app/PendingIntent;

.field private mWakeUpPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    const-string p1, "alarm"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Lcom/android/server/UiModeManagerService$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService$NightModeTimer;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$NightModeTimer;->calculateUserSchedule()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/UiModeManagerService$NightModeTimer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$NightModeTimer;->start()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/UiModeManagerService$NightModeTimer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$NightModeTimer;->stop()V

    return-void
.end method

.method private calculateUserSchedule()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_night_theme_on_time"

    const-wide/16 v2, 0x474

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "display_night_theme_off_time"

    const-wide/16 v4, 0x1a4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    const/16 v8, 0xc

    const/16 v9, 0xb

    const-wide/16 v10, 0x5a0

    if-ltz v7, :cond_36

    cmp-long v7, v0, v10

    if-gez v7, :cond_36

    long-to-int v7, v0

    iput v7, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeStartTime:I

    goto :goto_46

    :cond_36
    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v7, v12

    iput v7, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeStartTime:I

    :goto_46
    cmp-long v5, v2, v5

    if-ltz v5, :cond_52

    cmp-long v5, v2, v10

    if-gez v5, :cond_52

    long-to-int v5, v2

    iput v5, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeEndTime:I

    goto :goto_62

    :cond_52
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeEndTime:I

    :goto_62
    return-void
.end method

.method private getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 3

    const-string v0, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mSleepPendingIntent:Landroid/app/PendingIntent;

    return-object v0

    :cond_b
    const-string v0, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mWakeUpPendingIntent:Landroid/app/PendingIntent;

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTriggerAtMillis(Ljava/lang/String;)J
    .registers 4

    const-string v0, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeEndInMilli:J

    return-wide v0

    :cond_b
    const-string v0, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeStartInMilli:J

    return-wide v0

    :cond_16
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private notifySleep()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "display_night_theme_scheduled_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "display_night_theme_scheduled"

    if-lez v3, :cond_2e

    move v6, v1

    goto :goto_2f

    :cond_2e
    move v6, v2

    :goto_2f
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_37

    move v4, v1

    goto :goto_38

    :cond_37
    move v4, v2

    :goto_38
    if-eqz v4, :cond_72

    const/4 v5, 0x2

    if-ne v3, v5, :cond_72

    if-eqz v0, :cond_61

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mFlagToastBeEnabled:Z
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)Z

    move-result v5

    if-eqz v5, :cond_61

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    const v7, 0x1040980

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_61
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v5, v6, v1, v1}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    const-string v1, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService$NightModeTimer;->startAlarm(Ljava/lang/String;)V

    const-string v1, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService$NightModeTimer;->startAlarm(Ljava/lang/String;)V

    :cond_72
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mFlagToastBeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$602(Lcom/android/server/UiModeManagerService;Z)Z

    return-void
.end method

.method private notifyWakeUp()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_night_theme_scheduled_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "display_night_theme_scheduled"

    const/4 v4, 0x1

    if-lez v0, :cond_1c

    move v5, v4

    goto :goto_1d

    :cond_1c
    move v5, v2

    :goto_1d
    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_25

    move v1, v4

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    if-eqz v1, :cond_3c

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3c

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v5, v6, v4, v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    const-string v3, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->startAlarm(Ljava/lang/String;)V

    const-string v3, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->stopAlarm(Ljava/lang/String;)V

    :cond_3c
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mFlagToastBeEnabled:Z
    invoke-static {v3, v2}, Lcom/android/server/UiModeManagerService;->access$602(Lcom/android/server/UiModeManagerService;Z)Z

    return-void
.end method

.method private setScheduleAlarmTime()Z
    .registers 23

    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    move-object v13, v5

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int v14, v5, v6

    iget v15, v0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeStartTime:I

    iget v12, v0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeEndTime:I

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    if-ge v15, v12, :cond_b5

    if-gt v12, v14, :cond_7b

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v8, v5, 0x1

    div-int/lit8 v16, v15, 0x3c

    rem-int/lit8 v17, v15, 0x3c

    const/16 v18, 0x0

    move-object v5, v4

    move/from16 v9, v16

    move-object/from16 v19, v1

    move v1, v10

    move/from16 v10, v17

    move/from16 v11, v18

    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v11, 0x5

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v9, v1, 0x1

    div-int/lit8 v10, v12, 0x3c

    rem-int/lit8 v11, v12, 0x3c

    const/4 v1, 0x0

    move-object v6, v13

    move/from16 v20, v12

    move v12, v1

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    move v1, v5

    move/from16 v17, v20

    goto/16 :goto_126

    :cond_7b
    move-object/from16 v19, v1

    move v5, v9

    move v1, v10

    move/from16 v20, v12

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    div-int/lit8 v9, v15, 0x3c

    rem-int/lit8 v10, v15, 0x3c

    const/4 v12, 0x0

    move v1, v5

    move-object v5, v4

    move v11, v12

    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v12, 0x5

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move/from16 v5, v20

    div-int/lit8 v10, v5, 0x3c

    rem-int/lit8 v11, v5, 0x3c

    const/4 v12, 0x0

    move-object v6, v13

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    move/from16 v17, v5

    goto/16 :goto_126

    :cond_b5
    move-object/from16 v19, v1

    move v1, v9

    move v5, v12

    move v12, v11

    if-ltz v14, :cond_f6

    if-ge v14, v5, :cond_f6

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v9, v7, -0x1

    div-int/lit8 v10, v15, 0x3c

    rem-int/lit8 v11, v15, 0x3c

    const/16 v16, 0x0

    move/from16 v17, v5

    move-object v5, v4

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v16

    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    div-int/lit8 v10, v17, 0x3c

    rem-int/lit8 v11, v17, 0x3c

    const/4 v12, 0x0

    move-object v6, v13

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    goto :goto_126

    :cond_f6
    move/from16 v17, v5

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    div-int/lit8 v9, v15, 0x3c

    rem-int/lit8 v10, v15, 0x3c

    const/4 v11, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v9, v5, 0x1

    div-int/lit8 v10, v17, 0x3c

    rem-int/lit8 v11, v17, 0x3c

    const/4 v12, 0x0

    move-object v6, v13

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    :goto_126
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeStartInMilli:J

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeEndInMilli:J

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x0

    if-nez v5, :cond_13e

    if-ne v15, v14, :cond_13c

    goto :goto_13e

    :cond_13c
    move v5, v9

    goto :goto_13f

    :cond_13e
    :goto_13e
    move v5, v1

    :goto_13f
    invoke-virtual {v2, v13}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v5, :cond_148

    if-eqz v6, :cond_148

    goto :goto_149

    :cond_148
    move v1, v9

    :goto_149
    return v1
.end method

.method private start()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_night_theme_on_time"

    const/16 v2, 0x474

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeStartTime:I

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_night_theme_off_time"

    const/16 v2, 0x1a4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mNightModeEndTime:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mWakeUpPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mSleepPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-direct {p0, v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->stopAlarm(Ljava/lang/String;)V

    const-string v2, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-direct {p0, v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->stopAlarm(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$NightModeTimer;->setScheduleAlarmTime()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$NightModeTimer;->notifyWakeUp()V

    goto :goto_62

    :cond_5f
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$NightModeTimer;->notifySleep()V

    :goto_62
    return-void
.end method

.method private startAlarm(Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$NightModeTimer;->getTriggerAtMillis(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_18

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$NightModeTimer;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0, v1, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_18
    return-void
.end method

.method private stop()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mWakeUpPendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mSleepPendingIntent:Landroid/app/PendingIntent;

    const-string v0, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService$NightModeTimer;->stopAlarm(Ljava/lang/String;)V

    const-string v0, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService$NightModeTimer;->stopAlarm(Ljava/lang/String;)V

    return-void
.end method

.method private stopAlarm(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$NightModeTimer;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$NightModeTimer;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_b
    return-void
.end method
