.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$bSgSNfdvDRbumk_D_zjIwZ5FTy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$bSgSNfdvDRbumk_D_zjIwZ5FTy8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$bSgSNfdvDRbumk_D_zjIwZ5FTy8;

    invoke-direct {v0}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$bSgSNfdvDRbumk_D_zjIwZ5FTy8;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$bSgSNfdvDRbumk_D_zjIwZ5FTy8;->INSTANCE:Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$bSgSNfdvDRbumk_D_zjIwZ5FTy8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$doSyntheticPasswordFullMigrationAsync$18(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpManagerProxy;

    move-result-object p1

    return-object p1
.end method
