.class public Lcom/android/systemui/widget/SystemUIEditText;
.super Landroid/widget/EditText;
.source "SystemUIEditText.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIEditText$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field protected final mDrawPaint:Landroid/graphics/Paint;

.field private mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    new-instance v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;-><init>(Lcom/android/systemui/widget/SystemUIEditText$1;)V

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIEditText;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v1, "SystemUIEditText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-ge v0, v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$702(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$602(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$502(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    :cond_8
    return-void
.end method

.method private refreshResIds()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$102(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$802(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$302(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$202(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$902(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$402(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_5
    return-void
.end method

.method private updateEditText()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->semClearAllTextEffect()V

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const-string v4, "SystemUIEditText"

    const-string v6, "apply style: theme"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "SystemUIEditText"

    const-string v6, "apply style: adaptive color"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v2

    :cond_1
    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "SystemUIEditText"

    const-string v6, "apply style: white-bg"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$800(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$900(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->getShadowColor()I

    move-result v4

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    move v7, v2

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v8}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v8

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v9

    invoke-virtual {v8, v9, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    goto :goto_1

    :cond_4
    if-lez v0, :cond_7

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    :cond_6
    :goto_1
    const-string v6, "SystemUIEditText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "textColor="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "#%08X"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", shadowColor="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "#%08X"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v12

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/widget/SystemUIEditText;->setTextColor(I)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/widget/SystemUIEditText;->setHintTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->getShadowRadius()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->getShadowDx()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->getShadowDy()F

    move-result v8

    invoke-virtual {p0, v5, v6, v8, v4}, Lcom/android/systemui/widget/SystemUIEditText;->setShadowLayer(FFFI)V

    return-void

    :cond_7
    :goto_2
    const-string v5, "SystemUIEditText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid res = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    return-void
.end method

.method public updateStyle(I)V
    .locals 3

    const-string v0, "SystemUIEditText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->updateEditText()V

    return-void
.end method
