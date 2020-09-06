.class Lcom/android/server/desktopmode/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"


# instance fields
.field private mDisplayId:I

.field private mRealSize:Landroid/graphics/Point;

.field private mRotation:I

.field private mType:I


# direct methods
.method constructor <init>(Landroid/view/Display;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/desktopmode/DisplayInfo;

    iget v3, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    iget v4, v2, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    iget v4, v2, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget-object v4, v2, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    iget v4, v2, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method getDisplayId()I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    return v0
.end method

.method getRealSize()Landroid/graphics/Point;
    .registers 3

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method getRotation()I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    return v0
.end method

.method getType()I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
