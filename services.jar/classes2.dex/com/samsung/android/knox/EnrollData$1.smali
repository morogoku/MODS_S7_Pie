.class Lcom/samsung/android/knox/EnrollData$1;
.super Ljava/lang/Object;
.source "EnrollData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EnrollData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/EnrollData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/EnrollData;
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/EnrollData;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/EnrollData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnrollData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/EnrollData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/knox/EnrollData;
    .registers 3

    new-array v0, p1, [Lcom/samsung/android/knox/EnrollData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnrollData$1;->newArray(I)[Lcom/samsung/android/knox/EnrollData;

    move-result-object p1

    return-object p1
.end method
