.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$K2g8Oho05j5S7zVOkoQrHzM_Gig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$K2g8Oho05j5S7zVOkoQrHzM_Gig;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$K2g8Oho05j5S7zVOkoQrHzM_Gig;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$K2g8Oho05j5S7zVOkoQrHzM_Gig;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$K2g8Oho05j5S7zVOkoQrHzM_Gig;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$K2g8Oho05j5S7zVOkoQrHzM_Gig;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$K2g8Oho05j5S7zVOkoQrHzM_Gig(Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    return p1
.end method
