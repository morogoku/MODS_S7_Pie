.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$n4goLnVD5Bl6miK0tv5RyB8Fedc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$n4goLnVD5Bl6miK0tv5RyB8Fedc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$n4goLnVD5Bl6miK0tv5RyB8Fedc;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$n4goLnVD5Bl6miK0tv5RyB8Fedc;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$n4goLnVD5Bl6miK0tv5RyB8Fedc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$n4goLnVD5Bl6miK0tv5RyB8Fedc;

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

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupShortcut$10(Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method
