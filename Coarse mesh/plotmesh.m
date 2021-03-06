function plotmesh;
include_flags;
if strcmpi(plot_mesh,'yes')==1;  
% plot Natural BC
for i=1:nbe
    
        node1 = n_bc(1,i);        % first node
        node2 = n_bc(2,i);        % second node
   
        x1 = x(node1); y1=y(node1);    % coord of the first node
        x2 = x(node2); y2=y(node2);    % coord of the second node

        plot([x1 x2],[y1 y2],'r','LineWidth',4); hold on
end
    legend('natural B.C. (flux)');

    
    

    for i = 1:nel
        XX = [x(IEN1(i,2)) x(IEN1(i,3)) x(IEN1(i,4)) x(IEN1(i,2))];
        YY = [y(IEN1(i,2)) y(IEN1(i,3)) y(IEN1(i,4)) y(IEN1(i,2))];
        plot(XX,YY);hold on;

        if strcmpi(plot_nod,'yes')==1;   
            text(XX(1),YY(1),sprintf('%0.5g',IEN1(i,2)));
            text(XX(2),YY(2),sprintf('%0.5g',IEN1(i,3)));
            text(XX(3),YY(3),sprintf('%0.5g',IEN1(i,4)));
        end
    end
end



fprintf(1,'  Mesh Params \n');
fprintf(1,'No. of Elements  %d \n',nel);
fprintf(1,'No. of Nodes     %d \n',nnp);
fprintf(1,'No. of Equations %d \n\n',neq);





