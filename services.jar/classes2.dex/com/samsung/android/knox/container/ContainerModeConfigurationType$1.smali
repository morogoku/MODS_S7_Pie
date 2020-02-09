.class Lcom/samsung/android/knox/container/ContainerModeConfigurationType$1;
.super Ljava/lang/Object;
.source "ContainerModeConfigurationType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/container/ContainerModeConfigurationType;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
    .registers 4

    const-string v0, "ContainerModeConfigurationType"

    const-string v1, "ContainerModeConfigurationType[] array to be created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, p1, [Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType$1;->newArray(I)[Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    move-result-object p1

    return-object p1
.end method
