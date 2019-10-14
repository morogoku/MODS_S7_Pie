.class public Lcom/samsung/android/knox/lockscreen/LSOItemText;
.super Lcom/samsung/android/knox/lockscreen/LSOItemData;
.source "LSOItemText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_SIZE:F

.field public static final LSO_FIELD_TEXT:I = 0x80

.field public static final LSO_FIELD_TEXT_COLOR:I = 0x100

.field public static final LSO_FIELD_TEXT_SIZE:I = 0x200

.field public static final LSO_FIELD_TEXT_STYLE:I = 0x400


# instance fields
.field private text:Ljava/lang/String;

.field private text_color:I

.field private text_size:F

.field private text_style:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    sput v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->DEFAULT_TEXT_SIZE:F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    sget v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->DEFAULT_TEXT_SIZE:F

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(BLandroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private getTextSize(F)Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_b

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object v0

    :cond_b
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object v0

    :cond_16
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_21

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object v0

    :cond_21
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    iget v0, v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2c

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object v0

    :cond_2c
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    return v0
.end method

.method public getTextSize()Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize(F)Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object v0

    return-object v0
.end method

.method public getTextSizeAsFloat()F
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    return v0
.end method

.method public getTextStyle()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    const/4 v0, -0x1

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    const/16 v1, 0x400

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    sget v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->DEFAULT_TEXT_SIZE:F

    const/16 v1, 0x200

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->readFloatFromParcel(Landroid/os/Parcel;IF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->updateFieldFlag(I)V

    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->updateFieldFlag(I)V

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize(F)Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    return-void
.end method

.method public setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V
    .registers 4

    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    sget v1, Lcom/samsung/android/knox/lockscreen/LSOItemText;->DEFAULT_TEXT_SIZE:F

    cmpl-float v0, v0, v1

    const/16 v1, 0x200

    if-nez v0, :cond_e

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->removeFieldFlag(I)V

    goto :goto_15

    :cond_e
    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->updateFieldFlag(I)V

    :goto_15
    return-void
.end method

.method public setTextStyle(I)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->updateFieldFlag(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text_Color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text_Style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text_Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text:Ljava/lang/String;

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_color:I

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_style:I

    const/16 v1, 0x400

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;->text_size:F

    const/16 v1, 0x200

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->writeToParcel(Landroid/os/Parcel;IF)V

    return-void
.end method
