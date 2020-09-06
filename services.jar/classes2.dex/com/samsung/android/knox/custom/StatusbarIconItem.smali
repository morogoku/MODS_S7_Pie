.class public Lcom/samsung/android/knox/custom/StatusbarIconItem;
.super Ljava/lang/Object;
.source "StatusbarIconItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/StatusbarIconItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUSBAR_ICON_BATTERY_BARS:I = 0x2

.field public static final STATUSBAR_ICON_BATTERY_TEXT:I = 0x3

.field public static final STATUSBAR_ICON_CLOCK_TEXT:I = 0x1

.field public static final STATUSBAR_ICON_MOBILE_BARS:I = 0x4

.field public static final STATUSBAR_ICON_SMART_STAY:I = 0x6

.field public static final STATUSBAR_ICON_WIFI_BARS:I = 0x5


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

.field private final mAttributeColour_KEY:Ljava/lang/String;

.field private mIcon:I

.field private final mIcon_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/custom/StatusbarIconItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/StatusbarIconItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatusbarIconItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->TAG:Ljava/lang/String;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "ATTRIBUTE_COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatusbarIconItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->TAG:Ljava/lang/String;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "ATTRIBUTE_COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    if-lez v0, :cond_39

    new-array v1, v0, [Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    iput-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_39

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    new-instance v5, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    invoke-direct {v5, p0, v2, v3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;-><init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;II)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/custom/StatusbarIconItem$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeColour(I)Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    array-length v1, v1

    if-le v1, p1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    aget-object v0, v1, p1

    :cond_e
    return-object v0
.end method

.method public getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    return v0
.end method

.method public setAttributeColour(III)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    array-length v0, v0

    if-le v0, p1, :cond_12

    iget-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    new-instance v1, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;-><init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;II)V

    aput-object v1, v0, p1

    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attributeColour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    iget v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    array-length v0, v1

    :cond_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_2b

    iget-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2b
    return-void
.end method
