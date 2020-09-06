.class public Lcom/samsung/android/knox/sso/common/GenericSSOConstants$OAuthResponseKeys;
.super Ljava/lang/Object;
.source "GenericSSOConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sso/common/GenericSSOConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAuthResponseKeys"
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "OAUTH_RESPONSE_ACCESS_TOKEN"

.field public static final CLIENT_CERTIFICATE_CHAIN:Ljava/lang/String; = "OAUTH_RESPONSE_DEVICE_CERT_CLIENT_CERTIFICATE_CHAIN"

.field public static final CODE:Ljava/lang/String; = "OAUTH_RESPONSE_CODE"

.field public static final DEVICE_IDENTIFIER:Ljava/lang/String; = "OAUTH_RESPONSE_DEVICE_CERT_DEVICE_IDENTIFIER"

.field public static final ERROR_DESCRIPTION:Ljava/lang/String; = "OAUTH_RESPONSE_ERROR_DESCRIPTION"

.field public static final ERROR_URI:Ljava/lang/String; = "OAUTH_RESPONSE_ERROR_URI"

.field public static final EXPIRES_IN:Ljava/lang/String; = "OAUTH_RESPONSE_EXPIRES_IN"

.field public static final FULL_RESPONSE:Ljava/lang/String; = "OAUTH_RESPONSE_FULL_RESPONSE"

.field public static final ID_TOKEN:Ljava/lang/String; = "OAUTH_RESPONSE_USER_CERT_ID_TOKEN"

.field public static final ID_TOKEN_TYPE:Ljava/lang/String; = "OAUTH_RESPONSE_USER_CERT_ID_TOKEN_TYPE"

.field public static final JSON_STRING:Ljava/lang/String; = "OAUTH_RESPONSE_JSON_STRING"

.field public static final PRIVATEKEY:Ljava/lang/String; = "OAUTH_RESPONSE_DEVICE_CERT_PRIVATEKEY"

.field public static final PUBLICKEY:Ljava/lang/String; = "OAUTH_RESPONSE_DEVICE_CERT_PUBLICKEY"

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "OAUTH_RESPONSE_REFRESH_TOKEN"

.field public static final SCOPE:Ljava/lang/String; = "OAUTH_RESPONSE_SCOPE"

.field public static final SESSION_STATE:Ljava/lang/String; = "OAUTH_RESPONSE_SESSION_STATE"

.field public static final STATE:Ljava/lang/String; = "OAUTH_RESPONSE_STATE"

.field public static final TOKEN_TYPE:Ljava/lang/String; = "OAUTH_RESPONSE_TOKEN_TYPE"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
