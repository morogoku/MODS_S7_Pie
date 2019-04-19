.class public final synthetic Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$6xGF6jzLKZnPPG987MCfa6d3KvE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/splugins/SVersionInfo;

.field private final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/splugins/SVersionInfo;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$6xGF6jzLKZnPPG987MCfa6d3KvE;->f$0:Lcom/android/systemui/splugins/SVersionInfo;

    iput-object p2, p0, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$6xGF6jzLKZnPPG987MCfa6d3KvE;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$6xGF6jzLKZnPPG987MCfa6d3KvE;->f$0:Lcom/android/systemui/splugins/SVersionInfo;

    iget-object v1, p0, Lcom/android/systemui/splugins/-$$Lambda$SVersionInfo$6xGF6jzLKZnPPG987MCfa6d3KvE;->f$1:Landroid/util/ArrayMap;

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Lcom/android/systemui/splugins/SVersionInfo$Version;

    invoke-static {v0, v1, p1, p2}, Lcom/android/systemui/splugins/SVersionInfo;->lambda$checkVersion$0(Lcom/android/systemui/splugins/SVersionInfo;Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/android/systemui/splugins/SVersionInfo$Version;)V

    return-void
.end method
