.class public final synthetic Lcom/android/systemui/-$$Lambda$SystemUIFactory$L-4aOdTXuzt8OB3pSNymTUOwMhQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$SystemUIFactory$L-4aOdTXuzt8OB3pSNymTUOwMhQ;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$SystemUIFactory$L-4aOdTXuzt8OB3pSNymTUOwMhQ;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory;->lambda$injectDependencies$6(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
