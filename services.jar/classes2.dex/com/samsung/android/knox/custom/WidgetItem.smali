.class public Lcom/samsung/android/knox/custom/WidgetItem;
.super Ljava/lang/Object;
.source "WidgetItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCellX:I

.field private final mCellX_KEY:Ljava/lang/String;

.field private mCellY:I

.field private final mCellY_KEY:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private final mIntent_KEY:Ljava/lang/String;

.field private mMoreItems:I

.field private final mMoreItems_KEY:Ljava/lang/String;

.field private mParent:Ljava/lang/String;

.field private final mParent_KEY:Ljava/lang/String;

.field private mSizeX:I

.field private final mSizeX_KEY:Ljava/lang/String;

.field private mSizeY:I

.field private final mSizeY_KEY:Ljava/lang/String;

.field private mWidgetId:I

.field private final mWidgetId_KEY:Ljava/lang/String;

.field private mWidgetType:I

.field private final mmWidgetType_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/custom/WidgetItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/WidgetItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/WidgetItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;ILjava/lang/String;IIIII)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WidgetItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->TAG:Ljava/lang/String;

    const-string v0, "WIDGET"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mmWidgetType_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "ID"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "SIZEX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX_KEY:Ljava/lang/String;

    const-string v0, "SIZEY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    iput-object p4, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    iput p6, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    iput p7, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    iput p8, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    iput p9, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WidgetItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->TAG:Ljava/lang/String;

    const-string v0, "WIDGET"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mmWidgetType_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "ID"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "SIZEX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX_KEY:Ljava/lang/String;

    const-string v0, "SIZEY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/custom/WidgetItem$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/WidgetItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCellX()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    return v0
.end method

.method public getCellY()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMoreItems()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    return v0
.end method

.method public getParent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeX()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    return v0
.end method

.method public getSizeY()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    return v0
.end method

.method public getWidgetId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    return v0
.end method

.method public getWidgetType()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/WidgetItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " widgetType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent"

    iget-object v2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
