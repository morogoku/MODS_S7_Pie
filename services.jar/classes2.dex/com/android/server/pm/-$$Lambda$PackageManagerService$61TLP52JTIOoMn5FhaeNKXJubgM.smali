.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$61TLP52JTIOoMn5FhaeNKXJubgM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$61TLP52JTIOoMn5FhaeNKXJubgM;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$61TLP52JTIOoMn5FhaeNKXJubgM;->f$0:I

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->lambda$postPreferredActivityChangedBroadcast$8(I)V

    return-void
.end method
