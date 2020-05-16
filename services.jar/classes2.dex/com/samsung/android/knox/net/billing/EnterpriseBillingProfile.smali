.class public Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
.super Ljava/lang/Object;
.source "EnterpriseBillingProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_REGEX_FOR_PROFILE_NAME:Ljava/lang/String; = "[a-zA-Z_0-9]+"


# instance fields
.field private final apns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseApn;",
            ">;"
        }
    .end annotation
.end field

.field private final profileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    iput-object p1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addApnToProfile(Lcom/samsung/android/knox/net/billing/EnterpriseApn;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public addApnsToProfile(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseApn;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_d
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApnsFromProfile()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseApn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public isProfileNameValid()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    const-string v2, "[a-zA-Z_0-9]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    :goto_13
    return v0
.end method

.method public isProfileValid()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    iget-object v3, v2, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v2, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v2, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_3a

    :cond_39
    goto :goto_14

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :cond_3d
    :goto_3d
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
