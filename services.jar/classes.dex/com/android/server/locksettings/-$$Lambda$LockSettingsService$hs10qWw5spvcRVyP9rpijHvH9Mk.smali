.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hs10qWw5spvcRVyP9rpijHvH9Mk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:[B

.field private final synthetic f$1:[B

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>([B[BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hs10qWw5spvcRVyP9rpijHvH9Mk;->f$0:[B

    iput-object p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hs10qWw5spvcRVyP9rpijHvH9Mk;->f$1:[B

    iput p3, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hs10qWw5spvcRVyP9rpijHvH9Mk;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hs10qWw5spvcRVyP9rpijHvH9Mk;->f$0:[B

    iget-object v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hs10qWw5spvcRVyP9rpijHvH9Mk;->f$1:[B

    iget v2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hs10qWw5spvcRVyP9rpijHvH9Mk;->f$2:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$migrateToSyntheticPasswordBased$24([B[BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
