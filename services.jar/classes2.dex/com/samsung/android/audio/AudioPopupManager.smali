.class public Lcom/samsung/android/audio/AudioPopupManager;
.super Ljava/lang/Object;
.source "AudioPopupManager.java"


# static fields
.field private static final MIN_WIDTH_MOBILE_LANDSCAPE:D = 0.5056

.field private static final MIN_WIDTH_MOBILE_PORTRAIT:D = 1.0

.field private static final MIN_WIDTH_TABLET_LANDSCAPE:D = 0.375

.field private static final MIN_WIDTH_TABLET_PORTRAIT:D = 0.6

.field private static final TAG:Ljava/lang/String; = "AudioService.Popup"

.field private static sInstance:Lcom/samsung/android/audio/AudioPopupManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPopupRemind:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupWindowShowOrientation:I

.field private mPopupWindowView:Landroid/view/View;

.field private mViewAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupRemind:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mViewAdded:Z

    iput-object p1, p0, Lcom/samsung/android/audio/AudioPopupManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/audio/AudioPopupManager;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupRemind:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/audio/AudioPopupManager;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/audio/AudioPopupManager;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/audio/AudioPopupManager;)Landroid/view/WindowManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/audio/AudioPopupManager;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$302(Lcom/samsung/android/audio/AudioPopupManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/audio/AudioPopupManager;->mViewAdded:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/audio/AudioPopupManager;
    .registers 2

    sget-object v0, Lcom/samsung/android/audio/AudioPopupManager;->sInstance:Lcom/samsung/android/audio/AudioPopupManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/audio/AudioPopupManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/audio/AudioPopupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/audio/AudioPopupManager;->sInstance:Lcom/samsung/android/audio/AudioPopupManager;

    :cond_b
    sget-object v0, Lcom/samsung/android/audio/AudioPopupManager;->sInstance:Lcom/samsung/android/audio/AudioPopupManager;

    return-object v0
.end method


# virtual methods
.method public getAppName(I)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_17} :catch_18

    return-object v3

    :catch_18
    move-exception v2

    const-string v3, "AudioService.Popup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageNameFromUid, cannot find name of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_3f

    const v3, 0x10400af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3f
    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public onConfigurationChangedForPopupWindow(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mViewAdded:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowShowOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mViewAdded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    :cond_21
    return-void
.end method

.method public showPopupWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "AudioService.Popup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " showPopupWindow mPopupRemind appNameKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " oldPid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupRemind:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " activePid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, v0, Lcom/samsung/android/audio/AudioPopupManager;->mViewAdded:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_154

    iget-object v3, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupRemind:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_50

    iget-object v3, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupRemind:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_50

    goto/16 :goto_154

    :cond_50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, v0, Lcom/samsung/android/audio/AudioPopupManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900c6

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    iget-object v6, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    const v7, 0x102043b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    const v8, 0x102043a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iget-object v8, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    const v9, 0x1020439

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    move-object/from16 v9, p1

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Lcom/samsung/android/audio/AudioPopupManager;->mContext:Landroid/content/Context;

    const v11, 0x10409f7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x104000a

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Lcom/samsung/android/audio/AudioPopupManager;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iput-object v10, v0, Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;

    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v11, v0, Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v11, v0, Lcom/samsung/android/audio/AudioPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v12, v11, Landroid/content/res/Configuration;->orientation:I

    iput v12, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowShowOrientation:I

    iget v12, v11, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x3

    if-lt v12, v13, :cond_d2

    move v12, v5

    goto :goto_d3

    :cond_d2
    move v12, v4

    :goto_d3
    iget v13, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowShowOrientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_da

    move v4, v5

    nop

    :cond_da
    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eqz v12, :cond_f7

    if-eqz v4, :cond_e8

    move-object/from16 v16, v6

    int-to-double v5, v13

    const-wide/high16 v17, 0x3fd8000000000000L    # 0.375

    :goto_e5
    mul-double v5, v5, v17

    goto :goto_f1

    :cond_e8
    move-object/from16 v16, v6

    int-to-double v5, v13

    const-wide v17, 0x3fe3333333333333L    # 0.6

    goto :goto_e5

    :goto_f1
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    goto :goto_10d

    :cond_f7
    move-object/from16 v16, v6

    if-eqz v4, :cond_104

    int-to-double v5, v13

    const-wide v17, 0x3fe02de00d1b7176L    # 0.5056

    :goto_101
    mul-double v5, v5, v17

    goto :goto_108

    :cond_104
    int-to-double v5, v13

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    goto :goto_101

    :goto_108
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    :goto_10d
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, 0x7f6

    const/16 v21, 0x108

    const/16 v22, -0x2

    move-object/from16 v17, v6

    move/from16 v18, v5

    invoke-direct/range {v17 .. v22}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v15, 0x33

    iput v15, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v15, v0, Lcom/samsung/android/audio/AudioPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v14, 0x10501fa

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v14, v13, v5

    const/4 v15, 0x2

    div-int/2addr v14, v15

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    new-instance v14, Lcom/samsung/android/audio/AudioPopupManager$1;

    invoke-direct {v14, v0, v7, v1, v2}, Lcom/samsung/android/audio/AudioPopupManager$1;-><init>(Lcom/samsung/android/audio/AudioPopupManager;Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v14, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    new-instance v15, Lcom/samsung/android/audio/AudioPopupManager$2;

    invoke-direct {v15, v0, v6}, Lcom/samsung/android/audio/AudioPopupManager$2;-><init>(Lcom/samsung/android/audio/AudioPopupManager;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v14, v0, Lcom/samsung/android/audio/AudioPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v15, v0, Lcom/samsung/android/audio/AudioPopupManager;->mPopupWindowView:Landroid/view/View;

    invoke-interface {v14, v15, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/samsung/android/audio/AudioPopupManager;->mViewAdded:Z

    return v14

    :cond_154
    :goto_154
    move-object/from16 v9, p1

    return v4
.end method
