.class public final synthetic Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$w4DbxrBH-doblsmkIonjReZkPJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$w4DbxrBH-doblsmkIonjReZkPJU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$w4DbxrBH-doblsmkIonjReZkPJU;

    invoke-direct {v0}, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$w4DbxrBH-doblsmkIonjReZkPJU;-><init>()V

    sput-object v0, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$w4DbxrBH-doblsmkIonjReZkPJU;->INSTANCE:Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$w4DbxrBH-doblsmkIonjReZkPJU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-static {p1, p2}, Lcom/android/systemui/splugins/SVersionInfo;->lambda$checkVersion$2(Ljava/lang/Class;Lcom/android/systemui/splugins/SVersionInfo$Version;)V

    return-void
.end method
