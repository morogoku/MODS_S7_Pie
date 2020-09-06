.class public Lcom/samsung/android/knox/accounts/AccountControlInfo;
.super Lcom/samsung/android/knox/ControlInfo;
.source "AccountControlInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/accounts/AccountControlInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/AccountControlInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/accounts/AccountControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/knox/ControlInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/knox/ControlInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/AccountControlInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/accounts/AccountControlInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/accounts/AccountControlInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
