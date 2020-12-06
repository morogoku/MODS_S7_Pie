.class public Lcom/android/systemui/recents/ScreenPinningRequestDialog;
.super Ljava/lang/Object;
.source "ScreenPinningRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private mAppName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field public final mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsExcluded:Z

.field private mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic lambda$showPrompt$0(Lcom/android/systemui/recents/ScreenPinningRequestDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    return-void
.end method


# virtual methods
.method public checkUnableToPin()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIsExcluded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public clearPrompt()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->unregisterReceivers()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->checkUnableToPin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f120888

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAppName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mTaskId:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    return-void
.end method

.method public registerReceivers()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public showPrompt(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mTaskId:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRecentTasks(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v9

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v9, v8, v10}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v10, v1, :cond_4

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v10

    iget v11, v7, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v10, v9, v11}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAppName:Ljava/lang/String;

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_2

    :cond_3
    move v10, v4

    :goto_2
    iput-boolean v10, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIsExcluded:Z

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    iput v1, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mTaskId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->registerReceivers()V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v7, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v8, 0x1030132

    invoke-direct {v5, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v7, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_6

    const v4, 0x7f12087e

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f12087d

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120955

    new-instance v6, Lcom/android/systemui/recents/-$$Lambda$ScreenPinningRequestDialog$ULj6GwH8KWaPiJUeR18gJBvy-ag;

    invoke-direct {v6, v0}, Lcom/android/systemui/recents/-$$Lambda$ScreenPinningRequestDialog$ULj6GwH8KWaPiJUeR18gJBvy-ag;-><init>(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_4
    move-object/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_13

    :cond_6
    iget-boolean v7, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIsExcluded:Z

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f120887

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAppName:Ljava/lang/String;

    aput-object v9, v6, v4

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120886

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    invoke-virtual {v5, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_7
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v9, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v8, :cond_8

    const v8, 0x7f0d01c6

    goto :goto_5

    :cond_8
    const v8, 0x7f0d01c5

    :goto_5
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v6

    goto :goto_6

    :cond_9
    move v8, v4

    :goto_6
    if-eqz v8, :cond_a

    iget-object v10, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v6

    goto :goto_7

    :cond_a
    move v10, v4

    :goto_7
    const v11, 0x7f0a03db

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v12, :cond_c

    iget-object v12, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_b

    const v13, 0x7f120884

    goto :goto_8

    :cond_b
    const v13, 0x7f120883

    :goto_8
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_c
    iget-object v12, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_d

    const v13, 0x7f120882

    goto :goto_9

    :cond_d
    const v13, 0x7f120881

    :goto_9
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    iget-object v12, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v12

    if-ne v12, v6, :cond_e

    goto :goto_b

    :cond_e
    move v6, v4

    :goto_b
    iget-object v12, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "navigationbar_key_order"

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v13, :cond_f

    const v13, 0x7f080495

    goto :goto_c

    :cond_f
    const v13, 0x7f080496

    :goto_c
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v14, :cond_10

    const v14, 0x7f080493

    goto :goto_d

    :cond_10
    const v14, 0x7f080494

    :goto_d
    iget-object v15, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v4, :cond_11

    const v4, 0x7f06028f

    goto :goto_e

    :cond_11
    const v4, 0x7f060290

    :goto_e
    invoke-virtual {v15, v4, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    const v9, 0x7f0a02e0

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v15, 0x7f0a044c

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    if-nez v12, :cond_12

    move v1, v13

    goto :goto_f

    :cond_12
    move v1, v14

    :goto_f
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v12, :cond_13

    move v1, v13

    goto :goto_10

    :cond_13
    move v1, v14

    :goto_10
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v1, :cond_15

    if-eqz v6, :cond_15

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v12, :cond_14

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    goto :goto_11

    :cond_14
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_15
    :goto_11
    const v1, 0x7f0a0449

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v16, v2

    const v2, 0x7f0a02df

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v10, :cond_17

    move/from16 v17, v3

    if-nez v12, :cond_16

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    :cond_16
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    :cond_17
    move/from16 v17, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_12
    iget-object v3, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    move-object/from16 v18, v1

    const v1, 0x7f120885

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120880

    invoke-virtual {v5, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_13
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public unregisterReceivers()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method
