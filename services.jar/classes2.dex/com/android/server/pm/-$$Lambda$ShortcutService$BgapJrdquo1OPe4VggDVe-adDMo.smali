.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$BgapJrdquo1OPe4VggDVe-adDMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$BgapJrdquo1OPe4VggDVe-adDMo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$BgapJrdquo1OPe4VggDVe-adDMo;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$BgapJrdquo1OPe4VggDVe-adDMo;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$BgapJrdquo1OPe4VggDVe-adDMo;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$BgapJrdquo1OPe4VggDVe-adDMo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupPayload$12(Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
