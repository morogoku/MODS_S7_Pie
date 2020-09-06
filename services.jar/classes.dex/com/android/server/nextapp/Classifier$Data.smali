.class Lcom/android/server/nextapp/Classifier$Data;
.super Ljava/lang/Object;
.source "Classifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/Classifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Data"
.end annotation


# instance fields
.field featureNum:I

.field features:[[D

.field itemNum:I

.field labels:[D

.field final synthetic this$0:Lcom/android/server/nextapp/Classifier;


# direct methods
.method constructor <init>(Lcom/android/server/nextapp/Classifier;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/nextapp/Classifier$Data;->this$0:Lcom/android/server/nextapp/Classifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/nextapp/Classifier$Data;->itemNum:I

    iput v0, p0, Lcom/android/server/nextapp/Classifier$Data;->featureNum:I

    const/16 v0, 0x8

    filled-new-array {p2, v0}, [I

    move-result-object v0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    new-array v0, p2, [D

    iput-object v0, p0, Lcom/android/server/nextapp/Classifier$Data;->labels:[D

    return-void
.end method
