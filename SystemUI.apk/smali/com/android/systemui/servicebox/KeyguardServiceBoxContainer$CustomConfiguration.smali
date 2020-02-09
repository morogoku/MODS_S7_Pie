.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomConfiguration"
.end annotation


# instance fields
.field private densityDpi:I

.field private fontScale:F

.field private orientation:I

.field private screenHeightDp:I

.field private screenLayout:I

.field private screenWidthDp:I

.field private smallestScreenWidthDp:I

.field private uiMode:I


# direct methods
.method private constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Configuration;Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;-><init>(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;Landroid/content/res/Configuration;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->compare(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private compare(Landroid/content/res/Configuration;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->smallestScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->densityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->uiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setTo(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->densityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$CustomConfiguration;->uiMode:I

    return-void
.end method
