.class public final enum Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;
.super Ljava/lang/Enum;
.source "WebServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

.field public static final enum GET:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

.field public static final enum POST:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;->GET:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;->POST:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    sget-object v1, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;->GET:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;->POST:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;->$VALUES:[Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;->$VALUES:[Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    return-object v0
.end method
