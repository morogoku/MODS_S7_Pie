.class public Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordMdfpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyingMaterial"
.end annotation


# static fields
.field private static final NULL:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;


# instance fields
.field private applicationId:[B

.field private authenticationData:[B

.field private gkInput:[B

.field private pivot:[B

.field private pivotSafe:Z

.field private secureMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([BI)V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->NULL:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivot:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivotSafe:Z

    iput p2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->secureMode:I

    return-void
.end method

.method public constructor <init>([BIZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivot:[B

    iput-boolean p3, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivotSafe:Z

    iput p2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->secureMode:I

    return-void
.end method

.method public static getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->NULL:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivotSafe:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_b

    :cond_9
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivot:[B

    :goto_b
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->gkInput:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->applicationId:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->authenticationData:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    return-void
.end method

.method public dump()V
    .registers 4

    const-string v0, "SyntheticPasswordMdfpp.SDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pivot              : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivot:[B

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SyntheticPasswordMdfpp.SDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gkInput            : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->gkInput:[B

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SyntheticPasswordMdfpp.SDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applicationId      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->applicationId:[B

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SyntheticPasswordMdfpp.SDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticationData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->authenticationData:[B

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAAD()[B
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->authenticationData:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivot:[B

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateAAD([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->authenticationData:[B

    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->authenticationData:[B

    return-object v0
.end method

.method public getAppId()[B
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->applicationId:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivot:[B

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateAppId([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->applicationId:[B

    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->applicationId:[B

    return-object v0
.end method

.method public getGkInput()[B
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->gkInput:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivot:[B

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateGkInput([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->gkInput:[B

    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->gkInput:[B

    return-object v0
.end method

.method public getSecureMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->secureMode:I

    return v0
.end method
