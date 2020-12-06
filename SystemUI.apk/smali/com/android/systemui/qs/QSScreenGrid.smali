.class public Lcom/android/systemui/qs/QSScreenGrid;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "QSScreenGrid.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentScreenGridColumn:I

.field private mCurrentScreenGridView:Landroid/view/View;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mScreenGridPref:Landroid/content/SharedPreferences;

.field private mScreenGridPrefEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    const-string v1, "grid_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPref:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPref:Landroid/content/SharedPreferences;

    const-string v1, "initialized"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPrefEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "initialized"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "2098"

    const-string v3, "4 by 3"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "qs_tile_layout"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSScreenGrid;->mCurrentScreenGridColumn:I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSScreenGrid;->initScreenGridDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mCurrentScreenGridView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSScreenGrid;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGrid;->mCurrentScreenGridView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSScreenGrid;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSScreenGrid;->changeScaleSelectedView(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSScreenGrid;Landroid/widget/ImageView;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSScreenGrid;->getColumn(Landroid/widget/ImageView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSScreenGrid;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mScreenGridPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private changeScaleSelectedView(Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x3f99999a    # 1.2f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private getColumn(Landroid/widget/ImageView;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGrid;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGrid;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_ITEM_TABLET:[I

    aget v1, v1, v0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_ITEM:[I

    aget v1, v1, v0

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private initScreenGridDialog()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSScreenGrid;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSScreenGrid;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSScreenGrid;->setBodyMessage()V

    new-instance v0, Lcom/android/systemui/qs/QSScreenGrid$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSScreenGrid$1;-><init>(Lcom/android/systemui/qs/QSScreenGrid;)V

    const v1, 0x7f120a09

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSScreenGrid;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setBodyMessage()V
    .locals 19

    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_COLUMN_TABLET:[I

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_COLUMN:[I

    goto :goto_0

    :goto_1
    move-object v8, v1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/systemui/qs/QSScreenGrid;->mRootLayout:Landroid/widget/LinearLayout;

    iget-object v0, v6, Lcom/android/systemui/qs/QSScreenGrid;->mRootLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v7, :cond_8

    iget-object v4, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    const v5, 0x7f0d01a7

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f0a01e1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget v9, v6, Lcom/android/systemui/qs/QSScreenGrid;->mCurrentScreenGridColumn:I

    iget-object v10, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    aget v11, v8, v1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v9, v10, :cond_1

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-direct {v6, v5, v11}, Lcom/android/systemui/qs/QSScreenGrid;->changeScaleSelectedView(Landroid/widget/ImageView;Z)V

    iput-object v5, v6, Lcom/android/systemui/qs/QSScreenGrid;->mCurrentScreenGridView:Landroid/view/View;

    goto :goto_3

    :cond_1
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-direct {v6, v5, v0}, Lcom/android/systemui/qs/QSScreenGrid;->changeScaleSelectedView(Landroid/widget/ImageView;Z)V

    :goto_3
    iget-object v9, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v9, v11, :cond_2

    move v9, v11

    goto :goto_4

    :cond_2
    move v9, v0

    :goto_4
    const/4 v10, 0x2

    if-eqz v9, :cond_3

    move v12, v10

    goto :goto_5

    :cond_3
    sget-boolean v12, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v12, :cond_4

    iget-object v12, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0077

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    goto :goto_5

    :cond_4
    iget-object v12, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0074

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    :goto_5
    if-eqz v9, :cond_5

    sget-object v13, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_MOBILE_KEYBOARD_COVERED_DRAWABLE:[I

    aget v13, v13, v1

    goto :goto_6

    :cond_5
    sget-object v13, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_DRAWABLE:[I

    aget v13, v13, v1

    :goto_6
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v14, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    const v15, 0x7f120a08

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v15, v8, v1

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v14, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/systemui/qs/QSScreenGrid$2;

    invoke-direct {v2, v6}, Lcom/android/systemui/qs/QSScreenGrid$2;-><init>(Lcom/android/systemui/qs/QSScreenGrid;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a01e2

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v14, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "ar"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "fa"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_7

    :cond_6
    const-string v15, "%dX%d"

    new-array v11, v10, [Ljava/lang/Object;

    aget v10, v8, v1

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v17, 0x1

    aput-object v10, v11, v17

    invoke-static {v15, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_7
    :goto_7
    const-string v10, "%dX%d"

    const/4 v11, 0x2

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v0

    aget v11, v8, v1

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x1

    aput-object v11, v15, v17

    invoke-static {v10, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_8
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    const v11, 0x7f120a08

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aget v15, v8, v1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v11, v16

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v10, 0x7f06026e

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v6, Lcom/android/systemui/qs/QSScreenGrid;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v2, -0x2

    const/4 v3, -0x1

    goto/16 :goto_2

    :cond_8
    iget-object v0, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07065b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v0, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07065a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v0, v6, Lcom/android/systemui/qs/QSScreenGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07065c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget-object v1, v6, Lcom/android/systemui/qs/QSScreenGrid;->mRootLayout:Landroid/widget/LinearLayout;

    move-object v0, v6

    move v2, v11

    move v3, v9

    move v4, v11

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSScreenGrid;->setView(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    return-void
.end method
