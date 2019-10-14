.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$VOuT1aDDRLgP4BupS0bEqBfu33A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/BixbyInteractor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/BixbyInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$Dependency$VOuT1aDDRLgP4BupS0bEqBfu33A;->f$0:Lcom/android/systemui/BixbyInteractor;

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$Dependency$VOuT1aDDRLgP4BupS0bEqBfu33A;->f$0:Lcom/android/systemui/BixbyInteractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->lambda$start$61(Lcom/android/systemui/BixbyInteractor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
