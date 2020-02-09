.class public Lcom/android/systemui/widget/SystemUIImageButton;
.super Landroid/widget/ImageButton;
.source "SystemUIImageButton.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIImageButton$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field private mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIImageButton;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v1, "SystemUIImageButton"

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

    new-instance v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;-><init>(Lcom/android/systemui/widget/SystemUIImageButton$1;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$602(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$702(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$502(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshResIds()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$902(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$002(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$802(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$102(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$402(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_8
    return-void
.end method

.method private updateButtonImage()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    const-string v4, "SystemUIImageButton"

    const-string v5, "apply style: theme"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    goto/16 :goto_0

    :cond_2
    iget v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$500(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "SystemUIImageButton"

    const-string v5, "apply style: adaptive color"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    :cond_4
    const-string v4, "SystemUIImageButton"

    const-string v7, "apply style: white-bg"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v7

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v3, v4

    const-string v4, "SystemUIImageButton"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "#%08X"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    :cond_6
    :goto_0
    if-lez v0, :cond_8

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_7

    const-string v5, "SystemUIImageButton"

    const-string v7, "filter is not null!!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    if-lez v1, :cond_9

    const-string v4, "SystemUIImageButton"

    const-string v5, "resBgId is not null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 3

    const-string v0, "SystemUIImageButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->updateButtonImage()V

    return-void
.end method
