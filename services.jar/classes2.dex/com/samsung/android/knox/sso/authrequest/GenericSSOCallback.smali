.class public abstract Lcom/samsung/android/knox/sso/authrequest/GenericSSOCallback;
.super Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub;
.source "GenericSSOCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFail(I)V
.end method

.method public abstract tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V
.end method

.method public abstract userInfoSuccess(Lcom/samsung/android/knox/sso/common/UserInfo;)V
.end method
