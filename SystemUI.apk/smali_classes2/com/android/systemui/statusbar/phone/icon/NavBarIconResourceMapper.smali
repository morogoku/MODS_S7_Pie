.class public Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;
.super Ljava/lang/Object;
.source "NavBarIconResourceMapper.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field mDefaultHintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mIsRTL:Z

.field mIsThemeDefault:Z

.field mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field mNImageTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mNTintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mOHintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field private mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/util/FeatureChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->initData()V

    return-void
.end method

.method private determineThemeType()Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsThemeDefault:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v6, "NavBarIconResourceMapper"

    const-string v7, "updateOpenThemeIcon OpenThemeTintResource NotFoundException"

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0802f6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0802fa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0802f3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f080316

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f080320

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0802ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0802f9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0802f2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f080314

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f08031f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v6, "NavBarIconResourceMapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateOpenThemeIcon OpenThemeIconResource NotFoundExceptionLightThemeIcon : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", DarkThemeIcon : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0801d3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0801d2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    goto :goto_2

    :catch_2
    move-exception v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v6, "NavBarIconResourceMapper"

    const-string v7, "updateOpenThemeIcon OpenThemeHintResource NotFoundException"

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v4

    :cond_4
    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v4

    :cond_5
    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_IMAGE:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v4

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_TINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v4

    :cond_7
    if-eqz v2, :cond_8

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v4

    :cond_8
    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v4
.end method

.method private getIconResourceArray(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)[Lcom/samsung/systemui/splugins/navigationbar/IconResource;
    .locals 28

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper$1;->$SwitchMap$com$samsung$systemui$splugins$navigationbar$IconThemeType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v2, 0x13

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "NavBarIconResourceMapper"

    const-string v3, "getIconResourceArray() Invalid IconThemeType return TYPE_DEFAULT"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconResourceArray(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)[Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v1

    return-object v1

    :pswitch_0
    new-array v1, v2, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802eb

    const v19, 0x7f0802ed

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802eb

    const v25, 0x7f0802ed

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v14

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802ef

    const v19, 0x7f0802f1

    const/16 v20, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802ef

    const v25, 0x7f0802f1

    const/16 v26, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fd

    const v19, 0x7f080313

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f08031d

    const v25, 0x7f08031e

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f7

    const v19, 0x7f0802f8

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v12, 0x7f080317

    const v13, 0x7f080318

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f08031b

    const v19, 0x7f08031c

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v9, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v10, 0x7f080324

    const v11, 0x7f080325

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fb

    const v19, 0x7f0802fc

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v8, 0x7f0802e9

    const v9, 0x7f0802ea

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080321

    const v19, 0x7f080322

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v6, 0x7f0802eb

    const v7, 0x7f0802ed

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802eb

    const v6, 0x7f0802ed

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0xf

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802ef

    const v6, 0x7f0802f1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x10

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x11

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802fd

    const v6, 0x7f080313

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x12

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0801d3

    const v6, 0x7f0801d2

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    return-object v1

    :pswitch_1
    new-array v1, v2, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f6

    const v19, 0x7f0802ee

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802f6

    const v25, 0x7f0802ee

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v14

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f3

    const v19, 0x7f0802f2

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802f3

    const v25, 0x7f0802f2

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080316

    const v19, 0x7f080314

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f080320

    const v25, 0x7f08031f

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fa

    const v19, 0x7f0802f9

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v12, 0x7f080317

    const v13, 0x7f080318

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f08031b

    const v19, 0x7f08031c

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v9, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v10, 0x7f080324

    const v11, 0x7f080325

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fb

    const v19, 0x7f0802fc

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v8, 0x7f0802e9

    const v9, 0x7f0802ea

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080321

    const v19, 0x7f080322

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v6, 0x7f0802eb

    const v7, 0x7f0802ed

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802eb

    const v6, 0x7f0802ed

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0xf

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802ef

    const v6, 0x7f0802f1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x10

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x11

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802fd

    const v6, 0x7f080313

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x12

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0801d3

    const v6, 0x7f0801d2

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    return-object v1

    :pswitch_2
    new-array v1, v2, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f6

    const v19, 0x7f0802ee

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802f6

    const v25, 0x7f0802ee

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v14

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f3

    const v19, 0x7f0802f2

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802f3

    const v25, 0x7f0802f2

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080316

    const v19, 0x7f080314

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f080320

    const v25, 0x7f08031f

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fa

    const v19, 0x7f0802f9

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v12, 0x7f080317

    const v13, 0x7f080318

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f08031b

    const v19, 0x7f08031c

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v9, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v10, 0x7f080324

    const v11, 0x7f080325

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fb

    const v19, 0x7f0802fc

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v8, 0x7f0802e9

    const v9, 0x7f0802ea

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080321

    const v19, 0x7f080322

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v6, 0x7f0802eb

    const v7, 0x7f0802ed

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802eb

    const v6, 0x7f0802ed

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0xf

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802ef

    const v6, 0x7f0802f1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x10

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x11

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802fd

    const v6, 0x7f080313

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x12

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0801d4

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_0
    const v3, 0x7f0801d0

    goto :goto_0

    :goto_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0801d5

    :goto_2
    move v6, v3

    goto :goto_3

    :cond_1
    const v3, 0x7f0801d1

    goto :goto_2

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    return-object v1

    :pswitch_3
    new-array v1, v2, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f6

    const v19, 0x7f0802f6

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802f6

    const v25, 0x7f0802f6

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v14

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f3

    const v19, 0x7f0802f3

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802f3

    const v25, 0x7f0802f3

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080316

    const v19, 0x7f080316

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f080320

    const v25, 0x7f080320

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fa

    const v19, 0x7f0802fa

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v12, 0x7f080317

    const v13, 0x7f080318

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f08031b

    const v19, 0x7f08031c

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v9, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v10, 0x7f080324

    const v11, 0x7f080325

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fb

    const v19, 0x7f0802fc

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v8, 0x7f0802e9

    const v9, 0x7f0802ea

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080321

    const v19, 0x7f080322

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v6, 0x7f0802eb

    const v7, 0x7f0802ed

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802eb

    const v6, 0x7f0802ed

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0xf

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802ef

    const v6, 0x7f0802f1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x10

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x11

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802fd

    const v6, 0x7f080313

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x12

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0801d4

    :goto_4
    move v5, v3

    goto :goto_5

    :cond_2
    const v3, 0x7f0801d0

    goto :goto_4

    :goto_5
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0801d5

    :goto_6
    move v6, v3

    goto :goto_7

    :cond_3
    const v3, 0x7f0801d1

    goto :goto_6

    :goto_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    return-object v1

    :pswitch_4
    new-array v1, v2, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f6

    const v19, 0x7f0802f6

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802f6

    const v25, 0x7f0802f6

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v14

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f3

    const v19, 0x7f0802f3

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802f3

    const v25, 0x7f0802f3

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080316

    const v19, 0x7f080316

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f080320

    const v25, 0x7f080320

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fa

    const v19, 0x7f0802fa

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v12, 0x7f080317

    const v13, 0x7f080318

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f08031b

    const v19, 0x7f08031c

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v9, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v10, 0x7f080324

    const v11, 0x7f080325

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fb

    const v19, 0x7f0802fc

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v8, 0x7f0802e9

    const v9, 0x7f0802ea

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080321

    const v19, 0x7f080322

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v6, 0x7f0802eb

    const v7, 0x7f0802ed

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802eb

    const v6, 0x7f0802ed

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0xf

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802ef

    const v6, 0x7f0802f1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x10

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x11

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802fd

    const v6, 0x7f080313

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x12

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0801d4

    :goto_8
    move v5, v3

    goto :goto_9

    :cond_4
    const v3, 0x7f0801d0

    goto :goto_8

    :goto_9
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0801d5

    :goto_a
    move v6, v3

    goto :goto_b

    :cond_5
    const v3, 0x7f0801d1

    goto :goto_a

    :goto_b
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    return-object v1

    :pswitch_5
    new-array v1, v2, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802eb

    const v19, 0x7f0802ed

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802eb

    const v25, 0x7f0802ed

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v14

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802ef

    const v19, 0x7f0802f1

    const/16 v20, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f0802ef

    const v25, 0x7f0802f1

    const/16 v26, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fd

    const v19, 0x7f080313

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v24, 0x7f08031d

    const v25, 0x7f08031e

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802f7

    const v19, 0x7f0802f8

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v12, 0x7f080317

    const v13, 0x7f080318

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f08031b

    const v19, 0x7f08031c

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v9, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v10, 0x7f080324

    const v11, 0x7f080325

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f0802fb

    const v19, 0x7f0802fc

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v8, 0x7f0802e9

    const v9, 0x7f0802ea

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v18, 0x7f080321

    const v19, 0x7f080322

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v6, 0x7f0802eb

    const v7, 0x7f0802ed

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802eb

    const v6, 0x7f0802ed

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0xf

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802ef

    const v6, 0x7f0802f1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x10

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x11

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v5, 0x7f0802fd

    const v6, 0x7f080313

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    const/16 v2, 0x12

    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f0801d4

    :goto_c
    move v5, v3

    goto :goto_d

    :cond_6
    const v3, 0x7f0801d0

    goto :goto_c

    :goto_d
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f0801d5

    :goto_e
    move v6, v3

    goto :goto_f

    :cond_7
    const v3, 0x7f0801d1

    goto :goto_e

    :goto_f
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v9, v1, v2

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 6

    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconResourceArray(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)[Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, v4, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v5, v4}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->addData(Lcom/samsung/systemui/splugins/navigationbar/IconType;Lcom/samsung/systemui/splugins/navigationbar/IconResource;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initData()V
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_TINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mNTintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_IMAGE:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mNImageTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOHintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultHintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-void
.end method

.method private isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z
    .locals 1

    iget-object v0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v3, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_TINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mNTintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v3, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_IMAGE:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mNImageTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v3, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v3, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOHintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v3, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultHintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v3, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v4, "NavBarIconResourceMapper"

    const-string v5, "no icon theme type define make theme default"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v3, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v2

    :goto_0
    iget-boolean v3, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    if-eqz v3, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsRTL:Z

    :cond_6
    iget-boolean v3, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    :cond_7
    iget-boolean v1, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v5, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v6, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getRtlKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getRtlKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_9
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v5, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getOpenThemeTintDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    return-object v3

    :cond_a
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v5, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v6, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    :goto_2
    return-object v3
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-object v0
.end method

.method public getGestureHintDrawable(I)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_TINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mNTintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_IMAGE:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mNImageTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOHintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultHintTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "NavBarIconResourceMapper"

    const-string v3, "no icon theme type define make theme default"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    move-result-object v2

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v4, "NavBarIconResourceMapper"

    const-string v5, "HintDrawable not found exception"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v3, v4}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v6, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v3, v4, v5, v6, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    move-result-object v3

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v4, v5, v6, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    move-result-object v3

    :goto_2
    move-object v1, v3

    :goto_3
    return-object v1
.end method

.method public isThemeIconUse()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v1, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-void
.end method

.method public updateConditions(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsThemeDefault:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsRTL:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->determineThemeType()Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-void
.end method
