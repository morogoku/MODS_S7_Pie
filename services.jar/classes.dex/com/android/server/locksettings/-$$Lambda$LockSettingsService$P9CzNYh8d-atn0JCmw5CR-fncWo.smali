.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$P9CzNYh8d-atn0JCmw5CR-fncWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:[B

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$P9CzNYh8d-atn0JCmw5CR-fncWo;->f$0:[B

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$P9CzNYh8d-atn0JCmw5CR-fncWo;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$P9CzNYh8d-atn0JCmw5CR-fncWo;->f$0:[B

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$P9CzNYh8d-atn0JCmw5CR-fncWo;->f$1:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$setLockCredentialWithLegacyToken$32([BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
