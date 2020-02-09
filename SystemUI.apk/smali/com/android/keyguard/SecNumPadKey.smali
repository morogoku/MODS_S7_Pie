.class public Lcom/android/keyguard/SecNumPadKey;
.super Lcom/android/keyguard/NumPadKey;
.source "SecNumPadKey.java"


# instance fields
.field private mDigitImage:Landroid/widget/ImageView;

.field private mIsImagePinLock:Z

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f0d00b4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecNumPadKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v0, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecNumPadKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    iget v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigit:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SPR_USIM_TEXT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mContext:Landroid/content/Context;

    const v1, 0x7f1204e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecNumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mContext:Landroid/content/Context;

    const v1, 0x7f080483

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecNumPadKey;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/SecNumPadKey;Landroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "rapid_key_input"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/LiftToActivateListener;

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecNumPadKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecNumPadKey;->setClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFont(Lcom/android/systemui/widget/SystemUITextView;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getOpenThemeNumericFont()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mContext:Landroid/content/Context;

    const v2, 0x7f12097b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "NumPadKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist. Use default font."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method

.method private updateRippleSize(II)V
    .locals 8

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/SecNumPadKey;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07052d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/NumPadKey;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "rapid_key_input"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/NumPadKey;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/NumPadKey;->onFinishInflate()V

    new-instance v0, Lcom/android/keyguard/-$$Lambda$SecNumPadKey$pw_rYTxbI8yFrUBF0GF-9xY8DB8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$SecNumPadKey$pw_rYTxbI8yFrUBF0GF-9xY8DB8;-><init>(Lcom/android/keyguard/SecNumPadKey;)V

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/SecNumPadKey;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/keyguard/SecNumPadKey;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    add-int v4, v1, v0

    iget-object v5, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v3, v1, v6, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/NumPadKey;->onLayout(ZIIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/NumPadKey;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/SecNumPadKey;->updateRippleSize(II)V

    return-void
.end method

.method public updateDigitTextSize()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070316

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public updateKlondikeTextSize()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070313

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public updateViewStyle(I)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/SecNumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    iget-boolean v2, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0d00ac

    goto :goto_1

    :cond_1
    const v2, 0x7f0d00b4

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/SecNumPadKey;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/keyguard/SecNumPadKey;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    invoke-virtual {v4, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0a0161

    invoke-virtual {p0, v1}, Lcom/android/keyguard/SecNumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigit:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f080491

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f080490

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f08048f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f08048e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f08048d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f08048c

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_6
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f08048b

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_7
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f08048a

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_8
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f080489

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_9
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v4, 0x7f080488

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    nop

    :goto_2
    iget v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigit:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/SecNumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_2
    const v1, 0x7f0a0162

    invoke-virtual {p0, v1}, Lcom/android/keyguard/SecNumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/keyguard/SecNumPadKey;->mDigit:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a02b1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/SecNumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigit:I

    if-lez v1, :cond_5

    sget-object v1, Lcom/android/keyguard/SecNumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/SecNumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f030036

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/SecNumPadKey;->sKlondike:[Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/android/keyguard/SecNumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v1, v1

    iget v4, p0, Lcom/android/keyguard/SecNumPadKey;->mDigit:I

    if-le v1, v4, :cond_6

    sget-object v1, Lcom/android/keyguard/SecNumPadKey;->sKlondike:[Ljava/lang/String;

    iget v4, p0, Lcom/android/keyguard/SecNumPadKey;->mDigit:I

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/SecNumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/SecNumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigit:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/SecNumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitText:Landroid/widget/TextView;

    instance-of v1, v1, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitText:Landroid/widget/TextView;

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0, v1}, Lcom/android/keyguard/SecNumPadKey;->updateFont(Lcom/android/systemui/widget/SystemUITextView;)V

    :cond_7
    :goto_5
    if-nez v0, :cond_9

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mContext:Landroid/content/Context;

    const v4, 0x7f080483

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_7

    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mContext:Landroid/content/Context;

    const v4, 0x7f0805ad

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    :goto_7
    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/SecNumPadKey;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
