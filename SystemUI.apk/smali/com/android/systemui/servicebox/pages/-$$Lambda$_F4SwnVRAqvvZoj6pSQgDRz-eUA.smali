.class public final synthetic Lcom/android/systemui/servicebox/pages/-$$Lambda$_F4SwnVRAqvvZoj6pSQgDRz-eUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$_F4SwnVRAqvvZoj6pSQgDRz-eUA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/servicebox/pages/-$$Lambda$_F4SwnVRAqvvZoj6pSQgDRz-eUA;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/pages/-$$Lambda$_F4SwnVRAqvvZoj6pSQgDRz-eUA;-><init>()V

    sput-object v0, Lcom/android/systemui/servicebox/pages/-$$Lambda$_F4SwnVRAqvvZoj6pSQgDRz-eUA;->INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$_F4SwnVRAqvvZoj6pSQgDRz-eUA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onRefreshCarrierInfo()V

    return-void
.end method
