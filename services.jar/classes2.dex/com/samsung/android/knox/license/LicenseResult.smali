.class public Lcom/samsung/android/knox/license/LicenseResult;
.super Ljava/lang/Object;
.source "LicenseResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/license/LicenseResult$Type;,
        Lcom/samsung/android/knox/license/LicenseResult$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/license/LicenseResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private status:Lcom/samsung/android/knox/license/LicenseResult$Status;

.field private type:Lcom/samsung/android/knox/license/LicenseResult$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/license/LicenseResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/license/LicenseResult$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/license/LicenseResult$Status;Lcom/samsung/android/knox/license/LicenseResult$Type;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    iput-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V
    .registers 4

    invoke-static {p1}, Lcom/samsung/android/knox/license/LicenseResult$Status;->fromStatusString(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Lcom/samsung/android/knox/license/LicenseResult$Status;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Lcom/samsung/android/knox/license/LicenseResult$Type;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object v0
.end method

.method public isActivation()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isSuccess()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/LicenseResult$Status;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/LicenseResult$Type;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-virtual {v0}, Lcom/samsung/android/knox/license/LicenseResult$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {v0}, Lcom/samsung/android/knox/license/LicenseResult$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
