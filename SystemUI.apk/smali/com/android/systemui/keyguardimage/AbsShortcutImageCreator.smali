.class abstract Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;
.super Ljava/lang/Object;
.source "AbsShortcutImageCreator.java"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mShortcutManager:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isSecure()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method getBottomMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I
    .locals 3

    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-ge v0, v1, :cond_0

    const v0, 0x7f070768

    goto :goto_0

    :cond_0
    const v0, 0x7f070767

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method getColor()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method getShortcutManager()Lcom/android/systemui/util/ShortcutManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    return-object v0
.end method

.method getSideMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I
    .locals 3

    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-ge v0, v1, :cond_0

    const v0, 0x7f070765

    goto :goto_0

    :cond_0
    const v0, 0x7f070764

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/util/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/util/ShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    :goto_0
    return-void
.end method
