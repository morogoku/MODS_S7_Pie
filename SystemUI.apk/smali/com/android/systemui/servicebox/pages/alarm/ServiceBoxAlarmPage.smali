.class public Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "ServiceBoxAlarmPage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CLOCK_FORMAT_12_SKEL:Ljava/lang/String;

.field private final CLOCK_FORMAT_24_SKEL:Ljava/lang/String;

.field private mAlarmClickListener:Landroid/view/View$OnClickListener;

.field private mAlarmHolder:Landroid/widget/FrameLayout;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAmpmLeftView:Lcom/android/systemui/widget/SystemUITextView;

.field private mAmpmRightView:Lcom/android/systemui/widget/SystemUITextView;

.field private mDowView:Lcom/android/systemui/widget/SystemUITextView;

.field private mNextAlarmView:Lcom/android/systemui/widget/SystemUITextView;

.field private mNoAlarmView:Lcom/android/systemui/widget/SystemUITextView;

.field private mTimeContainerView:Landroid/view/View;

.field private mTimeView:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/systemui/servicebox/pages/alarm/-$$Lambda$ServiceBoxAlarmPage$wAMe1L2v0GMiqizyvfYHRstQzcU;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/alarm/-$$Lambda$ServiceBoxAlarmPage$wAMe1L2v0GMiqizyvfYHRstQzcU;-><init>(Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmClickListener:Landroid/view/View$OnClickListener;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mContext:Landroid/content/Context;

    const v1, 0x7f120235

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->CLOCK_FORMAT_12_SKEL:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mContext:Landroid/content/Context;

    const v1, 0x7f120236

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->CLOCK_FORMAT_24_SKEL:Ljava/lang/String;

    return-void
.end method

.method private getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p3, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->getKeyguardStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    iget-object v3, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    sget-object v1, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshAlarmStatus() alarm is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x240c8400

    add-long/2addr v7, v5

    cmp-long v7, v3, v7

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    sget-object v8, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "refreshAlarmStatus() beforeOneWeek = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", alarmTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", currentTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_6

    iget-object v8, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v8

    const-string v9, "EEE"

    invoke-direct {v0, v3, v4, v9}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    if-eqz v8, :cond_2

    iget-object v11, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->CLOCK_FORMAT_24_SKEL:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v11, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->CLOCK_FORMAT_12_SKEL:Ljava/lang/String;

    :goto_1
    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "a"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v3, v4, v10}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eqz v8, :cond_3

    iget-object v13, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmLeftView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v13, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v13, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmRightView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v13, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_4

    :cond_3
    const-string v13, "a"

    invoke-direct {v0, v3, v4, v13}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const-string v14, "hma"

    invoke-static {v13, v14}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmLeftView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v15, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmRightView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v15, :cond_5

    const/16 v2, 0x8

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :goto_4
    iget-object v1, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mDowView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v11}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmLeftView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v12}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmRightView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v12}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    sget-object v1, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "refreshAlarmStatus() alarm = ["

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "], is24Hour = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    iget-object v1, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    sget-object v1, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshAlarmStatus() there is no alarm in next 7 days"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method private setGravity(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getContentsView(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmHolder:Landroid/widget/FrameLayout;

    const v2, 0x7f0d01f2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_alarm"

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a04d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNextAlarmView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    const v0, 0x7f0a04d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mDowView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmLeftView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmRightView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->refreshViews()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    const v0, 0x7f0a04d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public refreshViews(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.UPCOMING_ALERT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.UPCOMING_BIXBY_BRIEFING_ALERT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->getNextAlarmClocks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v3}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.sec.android.clockpackage.alarm.EXPLICIT_ALARM_ALERT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_4
    return-void
.end method

.method public updateGravity(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mGravity:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->setGravity(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setGravity(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNextAlarmView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNextAlarmView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setGravity(I)V

    :cond_3
    iput p1, p0, Lcom/android/systemui/servicebox/pages/alarm/ServiceBoxAlarmPage;->mGravity:I

    return-void

    :cond_4
    :goto_0
    return-void
.end method
