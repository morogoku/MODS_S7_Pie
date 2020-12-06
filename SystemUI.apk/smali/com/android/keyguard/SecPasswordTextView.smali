.class public Lcom/android/keyguard/SecPasswordTextView;
.super Lcom/android/keyguard/PasswordTextView;
.source "SecPasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;
    }
.end annotation


# instance fields
.field private mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

.field private mMaxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    iget-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const v1, 0x7f120971

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private isUseKeyboard()Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/SecPasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "speak_password"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public append(C)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    iget-object v1, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    invoke-interface {v1}, Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;->append()V

    :cond_1
    return-void
.end method

.method protected getCharBounds()Landroid/graphics/Rect;
    .locals 6

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070319

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/keyguard/SecPasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/SecPasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v1
.end method

.method public getPasswordText()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/SecPasswordTextView;->isUseKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/SecPasswordTextView;->isUseKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/PasswordTextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    aget-object v2, v2, v1

    instance-of v3, v2, Landroid/text/InputFilter$LengthFilter;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v3}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Lcom/android/keyguard/SecPasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/android/keyguard/SecPasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reset(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    if-eqz p2, :cond_0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/keyguard/SecPasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/SecPasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/SecPasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    :cond_2
    return-void
.end method

.method protected setMaxLength(I)V
    .locals 3

    iput p1, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecPasswordTextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setOnClickCallback(Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    return-void
.end method
