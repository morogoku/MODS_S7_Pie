.class public Lcom/android/systemui/qs/DataUsageView;
.super Landroid/widget/TextView;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/DataUsageView$Formatter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final mIsSupportCHNDataUsageConcept:Z


# instance fields
.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mCurrentDataSubId:I

.field private mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataLimitObserver:Landroid/database/ContentObserver;

.field private mDataUsage:Ljava/lang/String;

.field private mEnd:J

.field private mHandler:Landroid/os/Handler;

.field private mLimitLevel:J

.field private mRegistered:Z

.field private mStart:J

.field private mThread:Ljava/lang/Thread;

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsageLevel:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DataUsageView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    const-string/jumbo v0, "trafficmanager"

    invoke-static {v0}, Lcom/android/systemui/qs/DataUsageView;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/DataUsageView;->mIsSupportCHNDataUsageConcept:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$3;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$3;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$3;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/DataUsageView$1;-><init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$3;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/DataUsageView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/DataUsageView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/DataUsageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->updateDataText()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/DataUsageView;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/DataUsageView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/DataUsageView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->mIsSupportCHNDataUsageConcept:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/DataUsageView;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/DataUsageView;->getTotalUsedData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/DataUsageView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/DataUsageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private getBounds(I)V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move/from16 v6, p1

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    move/from16 v9, p1

    if-lt v2, v9, :cond_0

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v15, v4, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    move/from16 v16, v9

    invoke-virtual/range {v13 .. v19}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v3, v10

    move v6, v9

    move v9, v13

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/systemui/qs/DataUsageView;->mEnd:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v15, v4, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    move/from16 v16, p1

    invoke-virtual/range {v13 .. v19}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    :goto_0
    return-void
.end method

.method private getConfirmTime()J
    .locals 9

    const-string v0, "check_time"

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "DataUsageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    :goto_0
    cmp-long v1, v3, v1

    if-gez v1, :cond_0

    const-wide/16 v3, 0x0

    :cond_0
    return-wide v3
.end method

.method private getConfirmTraffic()J
    .locals 9

    const-string v0, "data_used_by_check_time"

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v4

    nop

    nop

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-long v4, v2

    const-string v6, "DataUsageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getConfirmTraffic "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from setting, confirm bytes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :catch_0
    move-exception v4

    const-string v5, "DataUsageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "DataUsageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfirmTraffic :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-wide v2
.end method

.method private getStartDay()I
    .locals 7

    const-string/jumbo v0, "set_package_start_date_value"

    const/4 v1, 0x1

    move v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "DataUsageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    if-lt v2, v1, :cond_0

    const/16 v1, 0x1f

    if-le v2, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private getTotalUsedData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .locals 21

    move-object/from16 v1, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "middle_real_value"

    const-wide/16 v11, 0x0

    move-object/from16 v13, p1

    iget-wide v14, v13, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/DataUsageView;->getStartDay()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/DataUsageView;->getBounds(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/DataUsageView;->getConfirmTime()J

    move-result-wide v4

    move-wide/from16 v16, v6

    iget-wide v6, v1, Lcom/android/systemui/qs/DataUsageView;->mStart:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/DataUsageView;->getConfirmTraffic()J

    move-result-wide v6

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide/from16 v18, v2

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v8, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide/from16 v18, v2

    :goto_0
    const-string v2, "DataUsageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_0
    move-wide/from16 v18, v2

    move-wide/from16 v6, v16

    :goto_1
    sub-long v0, v14, v8

    add-long/2addr v0, v6

    const-string v2, "DataUsageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "totalTraffic:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " totalUsedBytes:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " realTraffic:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " startTraffic:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private initView()V
    .locals 3

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    const v2, 0x7f120a0c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": 0 B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/DataUsageView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->updateCurrentDataSubId()V

    return-void
.end method

.method public static isSupportCHNEnhancedFeature(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private registerContentObserver()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataUsageView"

    const-string/jumbo v1, "registerContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch_traffic_settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    :cond_1
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataUsageView"

    const-string/jumbo v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mDataLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/DataUsageView;->mRegistered:Z

    :cond_1
    return-void
.end method

.method private updateDataText()V
    .locals 6

    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const v1, 0x7f120a0c

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageView;->mUsageLevel:J

    invoke-static {v0, v4, v5}, Lcom/android/systemui/qs/DataUsageView$Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageView;->mLimitLevel:J

    invoke-static {v3, v4, v5}, Lcom/android/systemui/qs/DataUsageView$Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": 0 B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    :goto_0
    const-string v0, "DataUsageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/DataUsageView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getLimitBytes()J
    .locals 9

    const-string/jumbo v0, "set_data_limit"

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->isLimitSet()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DataUsageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLimitBytes : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v3

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    nop

    nop

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-long v4, v2

    const-string v6, "DataUsageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLimitBytes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from setting, limit bytes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :catch_0
    move-exception v2

    const-string v5, "DataUsageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3
.end method

.method public isLimitSet()Z
    .locals 7

    const-string/jumbo v0, "switch_traffic_settings"

    const-string/jumbo v1, "set_data_limit"

    const/4 v2, 0x0

    move v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "max"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "DataUsageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Limit enabled :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_2
    :goto_1
    return v2
.end method

.method public updateCurrentDataSubId()V
    .locals 4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    sget-boolean v1, Lcom/android/systemui/qs/DataUsageView;->mIsSupportCHNDataUsageConcept:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->unregisterContentObserver()V

    invoke-direct {p0}, Lcom/android/systemui/qs/DataUsageView;->registerContentObserver()V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/qs/DataUsageView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DataUsageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Data SubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qs/DataUsageView;->mCurrentDataSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public updateUsageInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/DataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/DataUsageView$2;-><init>(Lcom/android/systemui/qs/DataUsageView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "DataUsageView"

    const-string v1, "Last Thread still running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
