.class public Lcom/samsung/android/knox/custom/PowerItem;
.super Ljava/lang/Object;
.source "PowerItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_SEND_BROADCAST:I = 0x1

.field public static final ACTION_SEND_STICKY_BROADCAST:I = 0x2

.field public static final ACTION_START_ACTIVITY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mIcon_KEY:Ljava/lang/String;

.field private mId:I

.field private final mId_KEY:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIntentAction:I

.field private final mIntentAction_KEY:Ljava/lang/String;

.field private final mIntent_KEY:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private final mText_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/custom/PowerItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/PowerItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/BitmapDrawable;Landroid/content/Intent;ILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PowerItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->TAG:Ljava/lang/String;

    const-string v0, "ID"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "INTENT_ACTION"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction_KEY:Ljava/lang/String;

    const-string v0, "TEXT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    iput-object p5, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PowerItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->TAG:Ljava/lang/String;

    const-string v0, "ID"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "INTENT_ACTION"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction_KEY:Ljava/lang/String;

    const-string v0, "TEXT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/custom/PowerItem$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/PowerItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentAction()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PowerItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intentAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent"

    iget-object v2, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
