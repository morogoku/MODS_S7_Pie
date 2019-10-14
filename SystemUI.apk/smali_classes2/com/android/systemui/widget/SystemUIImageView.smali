.class public Lcom/android/systemui/widget/SystemUIImageView;
.super Landroid/widget/ImageView;
.source "SystemUIImageView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIImageView$ResData;
    }
.end annotation


# instance fields
.field private mHasAttr:Z

.field private final mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    new-instance v1, Lcom/android/systemui/widget/SystemUIImageView$ResData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;-><init>(Lcom/android/systemui/widget/SystemUIImageView$1;)V

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v1, "SystemUIImageView"

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
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$702(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$802(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_b
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$602(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private refreshResIds()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2002(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$402(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$902(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$202(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_9
    return-void
.end method

.method private updateImage()V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    const-string v5, "SystemUIImageView"

    const-string v6, "apply style: theme"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/widget/SystemUIImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    if-lez v2, :cond_9

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v4, v0

    goto/16 :goto_0

    :cond_2
    iget v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v0, "SystemUIImageView"

    const-string v5, "apply style: adaptive color"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v3

    const-string v5, "SystemUIImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "#%08X"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v4, v5

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    goto/16 :goto_0

    :cond_4
    iget v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    :cond_5
    const-string v5, "SystemUIImageView"

    const-string v6, "apply style: white-bg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-gtz v1, :cond_7

    const-string v5, "SystemUIImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "white-bg res invalid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/widget/SystemUIImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    if-lez v2, :cond_9

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v4, v0

    goto :goto_0

    :cond_8
    const-string v0, "SystemUIImageView"

    const-string v5, "apply style: default"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_0
    if-lez v1, :cond_a

    const-string v0, "SystemUIImageView"

    const-string v5, "set Image Drawable!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    if-lez v2, :cond_b

    const-string v0, "SystemUIImageView"

    const-string v5, "set Background Drawable!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public invalidateImage()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setAdaptiveColor(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$602(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    const-string v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdaptiveColor() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOriginBackground(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$202(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOriginBackground() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setOriginImage(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOriginImage() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setThemeBackground(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThemeBackground() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setWhiteBgBackground(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhitebgBackground() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setWhiteBgColor(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$802(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBgColor() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setWhiteBgImage(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$702(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$902(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBgImage() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public updateStyle(I)V
    .locals 3

    const-string v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    return-void
.end method
