.class final Lcom/android/server/ylWatchdog$RebootByStealthReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RebootByStealthReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/ylWatchdog$RebootByStealthReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Lcom/android/server/ylWatchdog$RebootByStealthReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$RebootByStealthReceiver$1;-><init>(Lcom/android/server/ylWatchdog$RebootByStealthReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/ylWatchdog$RebootByStealthReceiver$1;->start()V

    return-void
.end method