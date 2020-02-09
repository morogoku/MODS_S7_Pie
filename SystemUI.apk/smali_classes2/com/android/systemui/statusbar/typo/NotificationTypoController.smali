.class public Lcom/android/systemui/statusbar/typo/NotificationTypoController;
.super Ljava/lang/Object;
.source "NotificationTypoController.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindNotificationGroupIcon(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v0, v1, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, v1, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070529

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNumberOfNotificationChildren()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    const v6, 0x7f0a0602

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    move-object v15, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v6, v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v12, 0x0

    if-eqz v6, :cond_1

    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v6

    new-array v7, v6, [Landroid/graphics/drawable/Drawable;

    move v8, v12

    :goto_0
    if-ge v8, v6, :cond_0

    move-object v9, v0

    check-cast v9, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v8

    goto :goto_1

    :cond_1
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    move-object v11, v0

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v10, v6

    invoke-virtual {v11, v12, v12, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v6, 0xa

    if-lt v13, v6, :cond_2

    const v6, 0x7f080410

    goto :goto_2

    :cond_2
    const v6, 0x7f08040f

    :goto_2
    move v9, v6

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move v6, v12

    :goto_3
    move/from16 v16, v6

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-object v8, v6

    if-eqz v16, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    :try_start_1
    invoke-virtual {v8, v6, v12}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v21, v11

    goto/16 :goto_5

    :cond_4
    :goto_4
    :try_start_2
    iget-object v6, v1, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v5, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-object v12, v6

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move v9, v5

    move-object/from16 v20, v10

    move v10, v5

    move-object/from16 v21, v11

    move-object/from16 v11, v19

    move-object/from16 v22, v3

    move-object v2, v12

    const/4 v3, 0x0

    move/from16 v12, v18

    :try_start_3
    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v15, v0, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v15, v6, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v3

    const v8, 0x7f0a044b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, v1, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f070528

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v21, v11

    :goto_5
    return-void
.end method

.method private bindNotificationIcon(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 9

    iget-object v0, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, v0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0602

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v5

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    move-object v8, v4

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v4, v7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private bindProfileBadge(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 8

    iget-object v0, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07052c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0604

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private refreshDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private resetTypoTemplate(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0608

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0606

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DateTimeView;

    invoke-virtual {v3, v1}, Landroid/widget/DateTimeView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0605

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0601

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a0604

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0607

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/DateTimeView;

    invoke-virtual {v7, v1}, Landroid/widget/DateTimeView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a0603

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSpannable(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTypoLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->flattenTextColor()V

    :cond_0
    return-void
.end method


# virtual methods
.method public showGroupNotification(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->resetTypoTemplate(Lcom/android/systemui/statusbar/NotificationContentView;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->bindNotificationGroupIcon(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->bindProfileBadge(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.subText"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, ""

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v4

    move-object v9, v5

    move-object v7, v6

    goto :goto_2

    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v5

    move-object v9, v6

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v5

    :goto_1
    goto :goto_2

    :cond_3
    move-object v9, v6

    goto :goto_1

    :goto_2
    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0a0608

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a0605

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0a0601

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/app/Notification;->showsTime()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0a0606

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/DateTimeView;

    invoke-virtual {v14, v13}, Landroid/widget/DateTimeView;->setVisibility(I)V

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    iget-wide v4, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v14, v4, v5}, Landroid/widget/DateTimeView;->setTime(J)V

    goto :goto_3

    :cond_4
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :goto_3
    const-string v4, ""

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ""

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a00b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNumberOfNotificationChildren()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    const v14, 0x7f120960

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v13

    invoke-virtual {v5, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0a0603

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->updateSpannable(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    const-class v15, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v15}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/NotificationColorPicker;

    iget-object v13, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v2, v0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v2

    iget-object v13, v0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v0

    move-object/from16 v25, v3

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    move/from16 v26, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v0, v3, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getAppPrimaryColor(Landroid/content/Context;ZZZ)I

    move-result v0

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToRevertByUserSetting()Z

    move-result v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    move-result v4

    const/4 v13, 0x0

    if-eqz v4, :cond_6

    move/from16 v27, v4

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v4

    const v1, 0x1020202

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    move v13, v1

    goto :goto_4

    :cond_6
    move/from16 v27, v4

    :goto_4
    move-object/from16 v1, p1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v19

    move-object/from16 v18, v15

    move/from16 v20, v0

    move/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v23, v4

    move/from16 v24, v13

    invoke-virtual/range {v18 .. v24}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateTypo(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;I)V

    return-void
.end method

.method public showHideContent(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->resetTypoTemplate(Lcom/android/systemui/statusbar/NotificationContentView;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->bindNotificationIcon(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->bindProfileBadge(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0608

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/app/Notification;->showsTime()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0607

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/DateTimeView;

    invoke-virtual {v5, v4}, Landroid/widget/DateTimeView;->setVisibility(I)V

    iget-wide v6, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v5, v6, v7}, Landroid/widget/DateTimeView;->setTime(J)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a00b4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const-class v5, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationColorPicker;

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v7, v0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v13

    iget-object v6, v0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v7

    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getAppPrimaryColor(Landroid/content/Context;ZZZ)I

    move-result v14

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToRevertByUserSetting()Z

    move-result v15

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->isColorized()Z

    move-result v16

    const/4 v6, 0x0

    if-eqz v16, :cond_1

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020202

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    :cond_1
    move/from16 v17, v6

    move-object/from16 v12, p1

    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v7

    move-object v6, v5

    move v8, v14

    move v9, v13

    move v10, v15

    move-object v11, v4

    move/from16 v12, v17

    invoke-virtual/range {v6 .. v12}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateTypo(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;I)V

    return-void
.end method

.method public showSingleNotification(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->resetTypoTemplate(Lcom/android/systemui/statusbar/NotificationContentView;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->bindNotificationIcon(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->bindProfileBadge(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v3

    move-object v6, v4

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v3

    :goto_1
    goto :goto_2

    :cond_2
    move-object v6, v4

    goto :goto_1

    :goto_2
    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0608

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a0605

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/app/Notification;->showsTime()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0a0606

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/DateTimeView;

    invoke-virtual {v10, v9}, Landroid/widget/DateTimeView;->setVisibility(I)V

    iget-wide v11, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v10, v11, v12}, Landroid/widget/DateTimeView;->setTime(J)V

    :cond_3
    const-string v10, ""

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0a00b4

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->updateSpannable(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    const-class v10, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/NotificationColorPicker;

    iget-object v11, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v12, v0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v18

    iget-object v11, v0, Lcom/android/systemui/statusbar/typo/NotificationTypoController;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v12

    iget-object v13, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v13

    invoke-virtual {v1, v11, v12, v13, v9}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getAppPrimaryColor(Landroid/content/Context;ZZZ)I

    move-result v19

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToRevertByUserSetting()Z

    move-result v20

    iget-object v11, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isColorized()Z

    move-result v21

    const/4 v11, 0x0

    if-eqz v21, :cond_5

    iget-object v12, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v12

    const v13, 0x1020202

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v11

    :cond_5
    move/from16 v22, v11

    move-object/from16 v15, p1

    invoke-virtual {v15, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v12

    move-object v11, v10

    move/from16 v13, v19

    move/from16 v14, v18

    move/from16 v15, v20

    move-object/from16 v16, v9

    move/from16 v17, v22

    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateTypo(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;I)V

    return-void
.end method
